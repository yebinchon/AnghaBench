
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mesh_table {int rhead; } ;
struct mesh_path {int state_lock; int flags; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int MESH_PATH_ACTIVE ;
 int mesh_rht_params ;
 scalar_t__ mpath_expired (struct mesh_path*) ;
 struct mesh_path* rhashtable_lookup (int *,int const*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct mesh_path *mpath_lookup(struct mesh_table *tbl, const u8 *dst,
          struct ieee80211_sub_if_data *sdata)
{
 struct mesh_path *mpath;

 mpath = rhashtable_lookup(&tbl->rhead, dst, mesh_rht_params);

 if (mpath && mpath_expired(mpath)) {
  spin_lock_bh(&mpath->state_lock);
  mpath->flags &= ~MESH_PATH_ACTIVE;
  spin_unlock_bh(&mpath->state_lock);
 }
 return mpath;
}
