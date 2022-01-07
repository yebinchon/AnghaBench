
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mesh_table {int entries; } ;
struct mesh_path {int flags; int timer; int state_lock; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_3__ {int mpaths; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int MESH_PATH_DELETED ;
 int MESH_PATH_RESOLVING ;
 int atomic_dec (int *) ;
 int del_timer_sync (int *) ;
 int kfree_rcu (struct mesh_path*,int ) ;
 int mesh_gate_del (struct mesh_table*,struct mesh_path*) ;
 int rcu ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mesh_path_free_rcu(struct mesh_table *tbl,
          struct mesh_path *mpath)
{
 struct ieee80211_sub_if_data *sdata = mpath->sdata;

 spin_lock_bh(&mpath->state_lock);
 mpath->flags |= MESH_PATH_RESOLVING | MESH_PATH_DELETED;
 mesh_gate_del(tbl, mpath);
 spin_unlock_bh(&mpath->state_lock);
 del_timer_sync(&mpath->timer);
 atomic_dec(&sdata->u.mesh.mpaths);
 atomic_dec(&tbl->entries);
 kfree_rcu(mpath, rcu);
}
