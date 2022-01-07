
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int rhead; } ;


 int kfree (struct mesh_table*) ;
 int mesh_path_rht_free ;
 int rhashtable_free_and_destroy (int *,int ,struct mesh_table*) ;

__attribute__((used)) static void mesh_table_free(struct mesh_table *tbl)
{
 rhashtable_free_and_destroy(&tbl->rhead,
        mesh_path_rht_free, tbl);
 kfree(tbl);
}
