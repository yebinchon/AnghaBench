
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct dlm_master_list_entry {scalar_t__ master; scalar_t__ type; int vote_map; int woken; int wq; int spinlock; int maybe_map; int response_map; int node_map; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ name; } ;
struct dlm_lock_resource {scalar_t__ owner; int spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {scalar_t__ name; int node_num; } ;


 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_MASTERY_TIMEOUT_MS ;
 scalar_t__ DLM_MLE_BLOCK ;
 int ML_ERROR ;
 scalar_t__ O2NM_MAX_NODES ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dlm_change_lockres_owner (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ;
 int dlm_do_assert_master (struct dlm_ctxt*,struct dlm_lock_resource*,int ,int ) ;
 int dlm_do_master_request (struct dlm_lock_resource*,struct dlm_master_list_entry*,int) ;
 int dlm_restart_lock_mastery (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_master_list_entry*,int) ;
 int find_next_bit (int ,scalar_t__,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int mlog (int ,char*,scalar_t__,...) ;
 int mlog_errno (int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int dlm_wait_for_lock_mastery(struct dlm_ctxt *dlm,
         struct dlm_lock_resource *res,
         struct dlm_master_list_entry *mle,
         int *blocked)
{
 u8 m;
 int ret, bit;
 int map_changed, voting_done;
 int assert, sleep;

recheck:
 ret = 0;
 assert = 0;


 spin_lock(&res->spinlock);
 if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN) {
  mlog(0, "%s:%.*s: owner is suddenly %u\n", dlm->name,
       res->lockname.len, res->lockname.name, res->owner);
  spin_unlock(&res->spinlock);


  if (res->owner != dlm->node_num) {
   ret = dlm_do_master_request(res, mle, res->owner);
   if (ret < 0) {

    mlog(ML_ERROR, "link to %u went down?: %d\n", res->owner, ret);
    msleep(500);
    goto recheck;
   }
  }
  ret = 0;
  goto leave;
 }
 spin_unlock(&res->spinlock);

 spin_lock(&mle->spinlock);
 m = mle->master;
 map_changed = (memcmp(mle->vote_map, mle->node_map,
         sizeof(mle->vote_map)) != 0);
 voting_done = (memcmp(mle->vote_map, mle->response_map,
        sizeof(mle->vote_map)) == 0);


 if (map_changed) {
  int b;
  mlog(0, "%s: %.*s: node map changed, restarting\n",
       dlm->name, res->lockname.len, res->lockname.name);
  ret = dlm_restart_lock_mastery(dlm, res, mle, *blocked);
  b = (mle->type == DLM_MLE_BLOCK);
  if ((*blocked && !b) || (!*blocked && b)) {
   mlog(0, "%s:%.*s: status change: old=%d new=%d\n",
        dlm->name, res->lockname.len, res->lockname.name,
        *blocked, b);
   *blocked = b;
  }
  spin_unlock(&mle->spinlock);
  if (ret < 0) {
   mlog_errno(ret);
   goto leave;
  }
  mlog(0, "%s:%.*s: restart lock mastery succeeded, "
       "rechecking now\n", dlm->name, res->lockname.len,
       res->lockname.name);
  goto recheck;
 } else {
  if (!voting_done) {
   mlog(0, "map not changed and voting not done "
        "for %s:%.*s\n", dlm->name, res->lockname.len,
        res->lockname.name);
  }
 }

 if (m != O2NM_MAX_NODES) {


  sleep = 0;
 } else {
  sleep = 1;

  if (voting_done && !*blocked) {
   bit = find_next_bit(mle->maybe_map, O2NM_MAX_NODES, 0);
   if (dlm->node_num <= bit) {



    mle->master = dlm->node_num;


    assert = 1;
    sleep = 0;
   }


  }
 }

 spin_unlock(&mle->spinlock);


 if (sleep) {
  unsigned long timeo = msecs_to_jiffies(DLM_MASTERY_TIMEOUT_MS);
  atomic_set(&mle->woken, 0);
  (void)wait_event_timeout(mle->wq,
      (atomic_read(&mle->woken) == 1),
      timeo);
  if (res->owner == O2NM_MAX_NODES) {
   mlog(0, "%s:%.*s: waiting again\n", dlm->name,
        res->lockname.len, res->lockname.name);
   goto recheck;
  }
  mlog(0, "done waiting, master is %u\n", res->owner);
  ret = 0;
  goto leave;
 }

 ret = 0;
 if (assert) {
  m = dlm->node_num;
  mlog(0, "about to master %.*s here, this=%u\n",
       res->lockname.len, res->lockname.name, m);
  ret = dlm_do_assert_master(dlm, res, mle->vote_map, 0);
  if (ret) {





   mlog_errno(ret);
  }


  ret = 0;
 }


 spin_lock(&res->spinlock);


 dlm_change_lockres_owner(dlm, res, m);
 spin_unlock(&res->spinlock);

leave:
 return ret;
}
