
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mesh_table {int walk_lock; int walk_head; int rhead; } ;
struct mesh_path {int walk_list; int rhash; int mpp; } ;
struct TYPE_5__ {int mpp_paths_generation; struct mesh_table* mpp_paths; } ;
struct TYPE_6__ {TYPE_2__ mesh; } ;
struct TYPE_4__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 scalar_t__ ether_addr_equal (int const*,int ) ;
 int hlist_add_head_rcu (int *,int *) ;
 scalar_t__ is_multicast_ether_addr (int const*) ;
 int kfree (struct mesh_path*) ;
 int memcpy (int ,int const*,int ) ;
 struct mesh_path* mesh_path_new (struct ieee80211_sub_if_data*,int const*,int ) ;
 int mesh_rht_params ;
 int rhashtable_lookup_insert_fast (int *,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mpp_path_add(struct ieee80211_sub_if_data *sdata,
   const u8 *dst, const u8 *mpp)
{
 struct mesh_table *tbl;
 struct mesh_path *new_mpath;
 int ret;

 if (ether_addr_equal(dst, sdata->vif.addr))

  return -ENOTSUPP;

 if (is_multicast_ether_addr(dst))
  return -ENOTSUPP;

 new_mpath = mesh_path_new(sdata, dst, GFP_ATOMIC);

 if (!new_mpath)
  return -ENOMEM;

 memcpy(new_mpath->mpp, mpp, ETH_ALEN);
 tbl = sdata->u.mesh.mpp_paths;

 spin_lock_bh(&tbl->walk_lock);
 ret = rhashtable_lookup_insert_fast(&tbl->rhead,
         &new_mpath->rhash,
         mesh_rht_params);
 if (!ret)
  hlist_add_head_rcu(&new_mpath->walk_list, &tbl->walk_head);
 spin_unlock_bh(&tbl->walk_lock);

 if (ret)
  kfree(new_mpath);

 sdata->u.mesh.mpp_paths_generation++;
 return ret;
}
