
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct mesh_path {int flags; scalar_t__ discovery_retries; int discovery_timeout; int is_gate; int state_lock; int exp_time; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ quiescing; } ;


 int MESH_PATH_REQ_QUEUED ;
 int MESH_PATH_RESOLVED ;
 int MESH_PATH_RESOLVING ;
 struct mesh_path* from_timer (int ,struct timer_list*,int ) ;
 int jiffies ;
 scalar_t__ max_preq_retries (struct ieee80211_sub_if_data*) ;
 scalar_t__ mesh_gate_num (struct ieee80211_sub_if_data*) ;
 int mesh_path_flush_pending (struct mesh_path*) ;
 int mesh_path_send_to_gates (struct mesh_path*) ;
 int mesh_queue_preq (struct mesh_path*,int ) ;
 int mhwmp_dbg (struct ieee80211_sub_if_data*,char*) ;
 struct mesh_path* mpath ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer ;

void mesh_path_timer(struct timer_list *t)
{
 struct mesh_path *mpath = from_timer(mpath, t, timer);
 struct ieee80211_sub_if_data *sdata = mpath->sdata;
 int ret;

 if (sdata->local->quiescing)
  return;

 spin_lock_bh(&mpath->state_lock);
 if (mpath->flags & MESH_PATH_RESOLVED ||
   (!(mpath->flags & MESH_PATH_RESOLVING))) {
  mpath->flags &= ~(MESH_PATH_RESOLVING | MESH_PATH_RESOLVED);
  spin_unlock_bh(&mpath->state_lock);
 } else if (mpath->discovery_retries < max_preq_retries(sdata)) {
  ++mpath->discovery_retries;
  mpath->discovery_timeout *= 2;
  mpath->flags &= ~MESH_PATH_REQ_QUEUED;
  spin_unlock_bh(&mpath->state_lock);
  mesh_queue_preq(mpath, 0);
 } else {
  mpath->flags &= ~(MESH_PATH_RESOLVING |
      MESH_PATH_RESOLVED |
      MESH_PATH_REQ_QUEUED);
  mpath->exp_time = jiffies;
  spin_unlock_bh(&mpath->state_lock);
  if (!mpath->is_gate && mesh_gate_num(sdata) > 0) {
   ret = mesh_path_send_to_gates(mpath);
   if (ret)
    mhwmp_dbg(sdata, "no gate was reachable\n");
  } else
   mesh_path_flush_pending(mpath);
 }
}
