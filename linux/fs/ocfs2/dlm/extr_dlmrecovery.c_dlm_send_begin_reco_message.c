
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_node_iter {int node_map; } ;
struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {int node_num; int name; int key; int spinlock; int domain_map; } ;
struct dlm_begin_reco {int node_idx; int dead_node; } ;
typedef int br ;


 int DLM_BEGIN_RECO_MSG ;
 int DLM_RECOVERY_LOCK_NAME ;
 int DLM_RECOVERY_LOCK_NAME_LEN ;
 int EAGAIN ;
 int EINVAL ;
 int ML_ERROR ;
 int ML_NOTICE ;
 int clear_bit (int,int ) ;
 scalar_t__ dlm_is_host_down (int) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 struct dlm_lock_resource* dlm_lookup_lockres (struct dlm_ctxt*,int ,int ) ;
 int dlm_node_iter_init (int ,struct dlm_node_iter*) ;
 int dlm_node_iter_next (struct dlm_node_iter*) ;
 int dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int memset (struct dlm_begin_reco*,int ,int) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int msleep (int) ;
 int o2net_send_message (int ,int ,struct dlm_begin_reco*,int,int,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_send_begin_reco_message(struct dlm_ctxt *dlm, u8 dead_node)
{
 struct dlm_begin_reco br;
 int ret = 0;
 struct dlm_node_iter iter;
 int nodenum;
 int status;

 mlog(0, "%s: dead node is %u\n", dlm->name, dead_node);

 spin_lock(&dlm->spinlock);
 dlm_node_iter_init(dlm->domain_map, &iter);
 spin_unlock(&dlm->spinlock);

 clear_bit(dead_node, iter.node_map);

 memset(&br, 0, sizeof(br));
 br.node_idx = dlm->node_num;
 br.dead_node = dead_node;

 while ((nodenum = dlm_node_iter_next(&iter)) >= 0) {
  ret = 0;
  if (nodenum == dead_node) {
   mlog(0, "not sending begin reco to dead node "
      "%u\n", dead_node);
   continue;
  }
  if (nodenum == dlm->node_num) {
   mlog(0, "not sending begin reco to self\n");
   continue;
  }
retry:
  ret = -EINVAL;
  mlog(0, "attempting to send begin reco msg to %d\n",
     nodenum);
  ret = o2net_send_message(DLM_BEGIN_RECO_MSG, dlm->key,
      &br, sizeof(br), nodenum, &status);

  if (ret >= 0)
   ret = status;
  if (dlm_is_host_down(ret)) {


   mlog(ML_NOTICE, "%s: node %u was down when sending "
        "begin reco msg (%d)\n", dlm->name, nodenum, ret);
   ret = 0;
  }






  if (ret == -EAGAIN || ret == EAGAIN) {
   mlog(0, "%s: trying to start recovery of node "
        "%u, but node %u is waiting for last recovery "
        "to complete, backoff for a bit\n", dlm->name,
        dead_node, nodenum);
   msleep(100);
   goto retry;
  }
  if (ret < 0) {
   struct dlm_lock_resource *res;



   mlog_errno(ret);
   mlog(ML_ERROR, "begin reco of dlm %s to node %u "
        "returned %d\n", dlm->name, nodenum, ret);
   res = dlm_lookup_lockres(dlm, DLM_RECOVERY_LOCK_NAME,
       DLM_RECOVERY_LOCK_NAME_LEN);
   if (res) {
    dlm_print_one_lock_resource(res);
    dlm_lockres_put(res);
   } else {
    mlog(ML_ERROR, "recovery lock not found\n");
   }


   msleep(100);
   goto retry;
  }
 }

 return ret;
}
