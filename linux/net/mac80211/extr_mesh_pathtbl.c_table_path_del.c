
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mesh_table {int walk_lock; int rhead; } ;
struct mesh_path {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int ENXIO ;
 int __mesh_path_del (struct mesh_table*,struct mesh_path*) ;
 int mesh_rht_params ;
 struct mesh_path* rhashtable_lookup_fast (int *,int const*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int table_path_del(struct mesh_table *tbl,
     struct ieee80211_sub_if_data *sdata,
     const u8 *addr)
{
 struct mesh_path *mpath;

 spin_lock_bh(&tbl->walk_lock);
 mpath = rhashtable_lookup_fast(&tbl->rhead, addr, mesh_rht_params);
 if (!mpath) {
  spin_unlock_bh(&tbl->walk_lock);
  return -ENXIO;
 }

 __mesh_path_del(tbl, mpath);
 spin_unlock_bh(&tbl->walk_lock);
 return 0;
}
