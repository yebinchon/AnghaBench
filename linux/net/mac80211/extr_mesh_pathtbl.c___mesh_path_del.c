
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int rhead; } ;
struct mesh_path {int rhash; int walk_list; } ;


 int hlist_del_rcu (int *) ;
 int mesh_path_free_rcu (struct mesh_table*,struct mesh_path*) ;
 int mesh_rht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void __mesh_path_del(struct mesh_table *tbl, struct mesh_path *mpath)
{
 hlist_del_rcu(&mpath->walk_list);
 rhashtable_remove_fast(&tbl->rhead, &mpath->rhash, mesh_rht_params);
 mesh_path_free_rcu(tbl, mpath);
}
