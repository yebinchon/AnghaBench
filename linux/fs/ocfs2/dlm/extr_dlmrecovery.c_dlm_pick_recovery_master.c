
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lockstatus {int status; } ;
struct dlm_lock_resource {int dummy; } ;
struct TYPE_2__ {int dead_node; int new_master; } ;
struct dlm_ctxt {int name; int node_num; TYPE_1__ reco; int dlm_reco_thread_wq; int spinlock; } ;
typedef int lksb ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int BUG () ;
 int BUG_ON (int) ;
 int DLM_DENIED ;
 int DLM_NORMAL ;
 int DLM_NOTQUEUED ;
 int DLM_RECOVERING ;
 int DLM_RECOVERY_LOCK_NAME ;
 int DLM_RECOVERY_LOCK_NAME_LEN ;
 int EEXIST ;
 int EINVAL ;
 int LKM_CANCEL ;
 int LKM_EXMODE ;
 int LKM_NOQUEUE ;
 int LKM_RECOVERY ;
 int ML_ERROR ;
 int O2NM_INVALID_NODE_NUM ;
 int dlm_errname (int) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 struct dlm_lock_resource* dlm_lookup_lockres (struct dlm_ctxt*,int ,int ) ;
 int dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int dlm_reco_ast ;
 int dlm_reco_bast ;
 scalar_t__ dlm_reco_master_ready (struct dlm_ctxt*) ;
 int dlm_reco_unlock_ast ;
 int dlm_send_begin_reco_message (struct dlm_ctxt*,int ) ;
 int dlm_set_reco_master (struct dlm_ctxt*,int ) ;
 int dlmlock (struct dlm_ctxt*,int ,struct dlm_lockstatus*,int,int ,int ,int ,struct dlm_ctxt*,int ) ;
 int dlmunlock (struct dlm_ctxt*,struct dlm_lockstatus*,int ,int ,struct dlm_ctxt*) ;
 int jiffies ;
 int memset (struct dlm_lockstatus*,int ,int) ;
 int mlog (int ,char*,...) ;
 int msecs_to_jiffies (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static int dlm_pick_recovery_master(struct dlm_ctxt *dlm)
{
 enum dlm_status ret;
 struct dlm_lockstatus lksb;
 int status = -EINVAL;

 mlog(0, "starting recovery of %s at %lu, dead=%u, this=%u\n",
      dlm->name, jiffies, dlm->reco.dead_node, dlm->node_num);
again:
 memset(&lksb, 0, sizeof(lksb));

 ret = dlmlock(dlm, LKM_EXMODE, &lksb, LKM_NOQUEUE|LKM_RECOVERY,
        DLM_RECOVERY_LOCK_NAME, DLM_RECOVERY_LOCK_NAME_LEN,
        dlm_reco_ast, dlm, dlm_reco_bast);

 mlog(0, "%s: dlmlock($RECOVERY) returned %d, lksb=%d\n",
      dlm->name, ret, lksb.status);

 if (ret == DLM_NORMAL) {
  mlog(0, "dlm=%s dlmlock says I got it (this=%u)\n",
       dlm->name, dlm->node_num);



  if (dlm_reco_master_ready(dlm)) {
   mlog(0, "%s: got reco EX lock, but %u will "
        "do the recovery\n", dlm->name,
        dlm->reco.new_master);
   status = -EEXIST;
  } else {
   status = 0;


   spin_lock(&dlm->spinlock);
   if (dlm->reco.dead_node == O2NM_INVALID_NODE_NUM) {
    status = -EINVAL;
    mlog(0, "%s: got reco EX lock, but "
         "node got recovered already\n", dlm->name);
    if (dlm->reco.new_master != O2NM_INVALID_NODE_NUM) {
     mlog(ML_ERROR, "%s: new master is %u "
          "but no dead node!\n",
          dlm->name, dlm->reco.new_master);
     BUG();
    }
   }
   spin_unlock(&dlm->spinlock);
  }



  if (!status) {
   mlog(0, "%s: dead=%u, this=%u, sending "
        "begin_reco now\n", dlm->name,
        dlm->reco.dead_node, dlm->node_num);
   status = dlm_send_begin_reco_message(dlm,
          dlm->reco.dead_node);

   BUG_ON(status);


   spin_lock(&dlm->spinlock);
   dlm_set_reco_master(dlm, dlm->node_num);
   spin_unlock(&dlm->spinlock);
  }



  ret = dlmunlock(dlm, &lksb, 0, dlm_reco_unlock_ast, dlm);
  if (ret == DLM_DENIED) {
   mlog(0, "got DLM_DENIED, trying LKM_CANCEL\n");
   ret = dlmunlock(dlm, &lksb, LKM_CANCEL, dlm_reco_unlock_ast, dlm);
  }
  if (ret != DLM_NORMAL) {






   mlog(ML_ERROR, "dlmunlock returned %d\n", ret);
  }
 } else if (ret == DLM_NOTQUEUED) {
  mlog(0, "dlm=%s dlmlock says another node got it (this=%u)\n",
       dlm->name, dlm->node_num);



  wait_event_timeout(dlm->dlm_reco_thread_wq,
      dlm_reco_master_ready(dlm),
      msecs_to_jiffies(1000));
  if (!dlm_reco_master_ready(dlm)) {
   mlog(0, "%s: reco master taking awhile\n",
        dlm->name);
   goto again;
  }

  mlog(0, "%s: reco master %u is ready to recover %u\n",
       dlm->name, dlm->reco.new_master, dlm->reco.dead_node);
  status = -EEXIST;
 } else if (ret == DLM_RECOVERING) {
  mlog(0, "dlm=%s dlmlock says master node died (this=%u)\n",
       dlm->name, dlm->node_num);
  goto again;
 } else {
  struct dlm_lock_resource *res;


  mlog(ML_ERROR, "%s: got %s from dlmlock($RECOVERY), "
       "lksb.status=%s\n", dlm->name, dlm_errname(ret),
       dlm_errname(lksb.status));
  res = dlm_lookup_lockres(dlm, DLM_RECOVERY_LOCK_NAME,
      DLM_RECOVERY_LOCK_NAME_LEN);
  if (res) {
   dlm_print_one_lock_resource(res);
   dlm_lockres_put(res);
  } else {
   mlog(ML_ERROR, "recovery lock not found\n");
  }
  BUG();
 }

 return status;
}
