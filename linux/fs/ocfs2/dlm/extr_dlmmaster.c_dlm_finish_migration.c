
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dlm_node_iter {int node_map; } ;
struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int wq; int spinlock; int state; TYPE_1__ lockname; } ;
struct dlm_ctxt {int node_num; int spinlock; int domain_map; } ;


 int DLM_ASSERT_MASTER_FINISH_MIGRATION ;
 int DLM_LOCK_RES_MIGRATING ;
 int clear_bit (int ,int ) ;
 int dlm_do_assert_master (struct dlm_ctxt*,struct dlm_lock_resource*,int ,int ) ;
 int dlm_do_migrate_request (struct dlm_ctxt*,struct dlm_lock_resource*,int ,int ,struct dlm_node_iter*) ;
 int dlm_kick_thread (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_set_refmap_bit (struct dlm_ctxt*,struct dlm_lock_resource*,int ) ;
 int dlm_node_iter_init (int ,struct dlm_node_iter*) ;
 int dlm_set_lockres_owner (struct dlm_ctxt*,struct dlm_lock_resource*,int ) ;
 int memset (int ,int ,int) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int set_bit (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

int dlm_finish_migration(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
    u8 old_master)
{
 struct dlm_node_iter iter;
 int ret = 0;

 spin_lock(&dlm->spinlock);
 dlm_node_iter_init(dlm->domain_map, &iter);
 clear_bit(old_master, iter.node_map);
 clear_bit(dlm->node_num, iter.node_map);
 spin_unlock(&dlm->spinlock);




 spin_lock(&res->spinlock);
 dlm_lockres_set_refmap_bit(dlm, res, old_master);
 spin_unlock(&res->spinlock);

 mlog(0, "now time to do a migrate request to other nodes\n");
 ret = dlm_do_migrate_request(dlm, res, old_master,
         dlm->node_num, &iter);
 if (ret < 0) {
  mlog_errno(ret);
  goto leave;
 }

 mlog(0, "doing assert master of %.*s to all except the original node\n",
      res->lockname.len, res->lockname.name);


 ret = dlm_do_assert_master(dlm, res, iter.node_map,
       DLM_ASSERT_MASTER_FINISH_MIGRATION);
 if (ret < 0) {

  mlog_errno(ret);
  ret = 0;
 }

 memset(iter.node_map, 0, sizeof(iter.node_map));
 set_bit(old_master, iter.node_map);
 mlog(0, "doing assert master of %.*s back to %u\n",
      res->lockname.len, res->lockname.name, old_master);
 ret = dlm_do_assert_master(dlm, res, iter.node_map,
       DLM_ASSERT_MASTER_FINISH_MIGRATION);
 if (ret < 0) {
  mlog(0, "assert master to original master failed "
       "with %d.\n", ret);


  ret = 0;
 }


 spin_lock(&res->spinlock);
 dlm_set_lockres_owner(dlm, res, dlm->node_num);
 res->state &= ~DLM_LOCK_RES_MIGRATING;
 spin_unlock(&res->spinlock);

 dlm_kick_thread(dlm, res);
 wake_up(&res->wq);
leave:
 return ret;
}
