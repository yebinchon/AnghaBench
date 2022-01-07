
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mpp_paths; int mesh_paths; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int mesh_path_tbl_expire (struct ieee80211_sub_if_data*,int ) ;

void mesh_path_expire(struct ieee80211_sub_if_data *sdata)
{
 mesh_path_tbl_expire(sdata, sdata->u.mesh.mesh_paths);
 mesh_path_tbl_expire(sdata, sdata->u.mesh.mpp_paths);
}
