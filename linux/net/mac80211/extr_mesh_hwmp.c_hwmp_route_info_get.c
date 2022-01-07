
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sta_info {TYPE_2__* mesh; } ;
struct mesh_path {int flags; scalar_t__ sn; scalar_t__ metric; unsigned long exp_time; int hop_count; int state_lock; int path_change_count; int next_hop; } ;
struct TYPE_3__ {int const* addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int* sa; } ;
struct ieee80211_local {int dummy; } ;
typedef enum mpath_frame_type { ____Placeholder_mpath_frame_type } mpath_frame_type ;
struct TYPE_4__ {int fail_avg; } ;


 scalar_t__ IS_ERR (struct mesh_path*) ;
 scalar_t__ MAX_METRIC ;
 scalar_t__ MAX_SANE_SN_DELTA ;
 int MESH_PATH_ACTIVE ;
 int MESH_PATH_FIXED ;
 int MESH_PATH_SN_VALID ;


 int PREP_IE_HOPCOUNT (int const*) ;
 unsigned long PREP_IE_LIFETIME (int const*) ;
 scalar_t__ PREP_IE_METRIC (int const*) ;
 int* PREP_IE_TARGET_ADDR (int const*) ;
 scalar_t__ PREP_IE_TARGET_SN (int const*) ;
 int PREQ_IE_HOPCOUNT (int const*) ;
 unsigned long PREQ_IE_LIFETIME (int const*) ;
 scalar_t__ PREQ_IE_METRIC (int const*) ;
 int* PREQ_IE_ORIG_ADDR (int const*) ;
 scalar_t__ PREQ_IE_ORIG_SN (int const*) ;
 scalar_t__ SN_DELTA (scalar_t__,scalar_t__) ;
 scalar_t__ SN_GT (scalar_t__,scalar_t__) ;
 unsigned long TU_TO_EXP_TIME (unsigned long) ;
 scalar_t__ airtime_link_metric_get (struct ieee80211_local*,struct sta_info*) ;
 scalar_t__ ether_addr_equal (int const*,int const*) ;
 int ewma_mesh_fail_avg_add (int *,int) ;
 int ewma_mesh_fail_avg_init (int *) ;
 int mesh_path_activate (struct mesh_path*) ;
 struct mesh_path* mesh_path_add (struct ieee80211_sub_if_data*,int const*) ;
 int mesh_path_assign_nexthop (struct mesh_path*,struct sta_info*) ;
 struct mesh_path* mesh_path_lookup (struct ieee80211_sub_if_data*,int const*) ;
 int mesh_path_tx_pending (struct mesh_path*) ;
 scalar_t__ mult_frac (scalar_t__,int,int) ;
 struct sta_info* rcu_access_pointer (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static u32 hwmp_route_info_get(struct ieee80211_sub_if_data *sdata,
          struct ieee80211_mgmt *mgmt,
          const u8 *hwmp_ie, enum mpath_frame_type action)
{
 struct ieee80211_local *local = sdata->local;
 struct mesh_path *mpath;
 struct sta_info *sta;
 bool fresh_info;
 const u8 *orig_addr, *ta;
 u32 orig_sn, orig_metric;
 unsigned long orig_lifetime, exp_time;
 u32 last_hop_metric, new_metric;
 bool process = 1;
 u8 hopcount;

 rcu_read_lock();
 sta = sta_info_get(sdata, mgmt->sa);
 if (!sta) {
  rcu_read_unlock();
  return 0;
 }

 last_hop_metric = airtime_link_metric_get(local, sta);

 fresh_info = 1;

 switch (action) {
 case 128:
  orig_addr = PREQ_IE_ORIG_ADDR(hwmp_ie);
  orig_sn = PREQ_IE_ORIG_SN(hwmp_ie);
  orig_lifetime = PREQ_IE_LIFETIME(hwmp_ie);
  orig_metric = PREQ_IE_METRIC(hwmp_ie);
  hopcount = PREQ_IE_HOPCOUNT(hwmp_ie) + 1;
  break;
 case 129:





  orig_addr = PREP_IE_TARGET_ADDR(hwmp_ie);
  orig_sn = PREP_IE_TARGET_SN(hwmp_ie);
  orig_lifetime = PREP_IE_LIFETIME(hwmp_ie);
  orig_metric = PREP_IE_METRIC(hwmp_ie);
  hopcount = PREP_IE_HOPCOUNT(hwmp_ie) + 1;
  break;
 default:
  rcu_read_unlock();
  return 0;
 }
 new_metric = orig_metric + last_hop_metric;
 if (new_metric < orig_metric)
  new_metric = MAX_METRIC;
 exp_time = TU_TO_EXP_TIME(orig_lifetime);

 if (ether_addr_equal(orig_addr, sdata->vif.addr)) {



  process = 0;
  fresh_info = 0;
 } else {
  mpath = mesh_path_lookup(sdata, orig_addr);
  if (mpath) {
   spin_lock_bh(&mpath->state_lock);
   if (mpath->flags & MESH_PATH_FIXED)
    fresh_info = 0;
   else if ((mpath->flags & MESH_PATH_ACTIVE) &&
       (mpath->flags & MESH_PATH_SN_VALID)) {
    if (SN_GT(mpath->sn, orig_sn) ||
        (mpath->sn == orig_sn &&
         (rcu_access_pointer(mpath->next_hop) !=
            sta ?
           mult_frac(new_metric, 10, 9) :
           new_metric) >= mpath->metric)) {
     process = 0;
     fresh_info = 0;
    }
   } else if (!(mpath->flags & MESH_PATH_ACTIVE)) {
    bool have_sn, newer_sn, bounced;

    have_sn = mpath->flags & MESH_PATH_SN_VALID;
    newer_sn = have_sn && SN_GT(orig_sn, mpath->sn);
    bounced = have_sn &&
       (SN_DELTA(orig_sn, mpath->sn) >
       MAX_SANE_SN_DELTA);

    if (!have_sn || newer_sn) {

                              ;
    } else if (bounced) {


                                ;
    } else {
     process = 0;
     fresh_info = 0;
    }
   }
  } else {
   mpath = mesh_path_add(sdata, orig_addr);
   if (IS_ERR(mpath)) {
    rcu_read_unlock();
    return 0;
   }
   spin_lock_bh(&mpath->state_lock);
  }

  if (fresh_info) {
   if (rcu_access_pointer(mpath->next_hop) != sta)
    mpath->path_change_count++;
   mesh_path_assign_nexthop(mpath, sta);
   mpath->flags |= MESH_PATH_SN_VALID;
   mpath->metric = new_metric;
   mpath->sn = orig_sn;
   mpath->exp_time = time_after(mpath->exp_time, exp_time)
       ? mpath->exp_time : exp_time;
   mpath->hop_count = hopcount;
   mesh_path_activate(mpath);
   spin_unlock_bh(&mpath->state_lock);
   ewma_mesh_fail_avg_init(&sta->mesh->fail_avg);

   ewma_mesh_fail_avg_add(&sta->mesh->fail_avg, 1);
   mesh_path_tx_pending(mpath);



  } else
   spin_unlock_bh(&mpath->state_lock);
 }


 ta = mgmt->sa;
 if (ether_addr_equal(orig_addr, ta))
  fresh_info = 0;
 else {
  fresh_info = 1;

  mpath = mesh_path_lookup(sdata, ta);
  if (mpath) {
   spin_lock_bh(&mpath->state_lock);
   if ((mpath->flags & MESH_PATH_FIXED) ||
       ((mpath->flags & MESH_PATH_ACTIVE) &&
        ((rcu_access_pointer(mpath->next_hop) != sta ?
           mult_frac(last_hop_metric, 10, 9) :
           last_hop_metric) > mpath->metric)))
    fresh_info = 0;
  } else {
   mpath = mesh_path_add(sdata, ta);
   if (IS_ERR(mpath)) {
    rcu_read_unlock();
    return 0;
   }
   spin_lock_bh(&mpath->state_lock);
  }

  if (fresh_info) {
   if (rcu_access_pointer(mpath->next_hop) != sta)
    mpath->path_change_count++;
   mesh_path_assign_nexthop(mpath, sta);
   mpath->metric = last_hop_metric;
   mpath->exp_time = time_after(mpath->exp_time, exp_time)
       ? mpath->exp_time : exp_time;
   mpath->hop_count = 1;
   mesh_path_activate(mpath);
   spin_unlock_bh(&mpath->state_lock);
   ewma_mesh_fail_avg_init(&sta->mesh->fail_avg);

   ewma_mesh_fail_avg_add(&sta->mesh->fail_avg, 1);
   mesh_path_tx_pending(mpath);
  } else
   spin_unlock_bh(&mpath->state_lock);
 }

 rcu_read_unlock();

 return process ? new_metric : 0;
}
