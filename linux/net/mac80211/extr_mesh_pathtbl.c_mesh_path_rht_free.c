
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int dummy; } ;
struct mesh_path {int dummy; } ;


 int mesh_path_free_rcu (struct mesh_table*,struct mesh_path*) ;

__attribute__((used)) static void mesh_path_rht_free(void *ptr, void *tblptr)
{
 struct mesh_path *mpath = ptr;
 struct mesh_table *tbl = tblptr;

 mesh_path_free_rcu(tbl, mpath);
}
