
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int mesh_paths_generation; int mesh_paths; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int mpp_flush_by_proxy (struct ieee80211_sub_if_data*,int const*) ;
 int table_path_del (int ,struct ieee80211_sub_if_data*,int const*) ;

int mesh_path_del(struct ieee80211_sub_if_data *sdata, const u8 *addr)
{
 int err;


 mpp_flush_by_proxy(sdata, addr);

 err = table_path_del(sdata->u.mesh.mesh_paths, sdata, addr);
 sdata->u.mesh.mesh_paths_generation++;
 return err;
}
