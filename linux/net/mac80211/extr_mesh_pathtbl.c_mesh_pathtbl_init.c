
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mesh_table {int rhead; } ;
struct TYPE_3__ {struct mesh_table* mpp_paths; struct mesh_table* mesh_paths; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int ENOMEM ;
 int mesh_rht_params ;
 struct mesh_table* mesh_table_alloc () ;
 int mesh_table_free (struct mesh_table*) ;
 int rhashtable_init (int *,int *) ;

int mesh_pathtbl_init(struct ieee80211_sub_if_data *sdata)
{
 struct mesh_table *tbl_path, *tbl_mpp;
 int ret;

 tbl_path = mesh_table_alloc();
 if (!tbl_path)
  return -ENOMEM;

 tbl_mpp = mesh_table_alloc();
 if (!tbl_mpp) {
  ret = -ENOMEM;
  goto free_path;
 }

 rhashtable_init(&tbl_path->rhead, &mesh_rht_params);
 rhashtable_init(&tbl_mpp->rhead, &mesh_rht_params);

 sdata->u.mesh.mesh_paths = tbl_path;
 sdata->u.mesh.mpp_paths = tbl_mpp;

 return 0;

free_path:
 mesh_table_free(tbl_path);
 return ret;
}
