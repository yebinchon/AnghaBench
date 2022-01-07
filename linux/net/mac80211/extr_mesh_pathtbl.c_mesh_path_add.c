
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mesh_table {int walk_lock; int walk_head; int rhead; } ;
struct mesh_path {int walk_list; int rhash; } ;
struct TYPE_5__ {int mesh_paths_generation; struct mesh_table* mesh_paths; int mpaths; } ;
struct TYPE_6__ {TYPE_2__ mesh; } ;
struct TYPE_4__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;


 int ENOMEM ;
 int ENOSPC ;
 int ENOTSUPP ;
 struct mesh_path* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct mesh_path*) ;
 int MESH_MAX_MPATHS ;
 scalar_t__ atomic_add_unless (int *,int,int ) ;
 scalar_t__ ether_addr_equal (int const*,int ) ;
 int hlist_add_head (int *,int *) ;
 scalar_t__ is_multicast_ether_addr (int const*) ;
 int kfree (struct mesh_path*) ;
 struct mesh_path* mesh_path_new (struct ieee80211_sub_if_data*,int const*,int ) ;
 int mesh_rht_params ;
 struct mesh_path* rhashtable_lookup_get_insert_fast (int *,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct mesh_path *mesh_path_add(struct ieee80211_sub_if_data *sdata,
    const u8 *dst)
{
 struct mesh_table *tbl;
 struct mesh_path *mpath, *new_mpath;

 if (ether_addr_equal(dst, sdata->vif.addr))

  return ERR_PTR(-ENOTSUPP);

 if (is_multicast_ether_addr(dst))
  return ERR_PTR(-ENOTSUPP);

 if (atomic_add_unless(&sdata->u.mesh.mpaths, 1, MESH_MAX_MPATHS) == 0)
  return ERR_PTR(-ENOSPC);

 new_mpath = mesh_path_new(sdata, dst, GFP_ATOMIC);
 if (!new_mpath)
  return ERR_PTR(-ENOMEM);

 tbl = sdata->u.mesh.mesh_paths;
 spin_lock_bh(&tbl->walk_lock);
 mpath = rhashtable_lookup_get_insert_fast(&tbl->rhead,
        &new_mpath->rhash,
        mesh_rht_params);
 if (!mpath)
  hlist_add_head(&new_mpath->walk_list, &tbl->walk_head);
 spin_unlock_bh(&tbl->walk_lock);

 if (mpath) {
  kfree(new_mpath);

  if (IS_ERR(mpath))
   return mpath;

  new_mpath = mpath;
 }

 sdata->u.mesh.mesh_paths_generation++;
 return new_mpath;
}
