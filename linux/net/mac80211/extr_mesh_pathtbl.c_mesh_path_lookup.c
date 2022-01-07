
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mesh_path {int dummy; } ;
struct TYPE_3__ {int mesh_paths; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 struct mesh_path* mpath_lookup (int ,int const*,struct ieee80211_sub_if_data*) ;

struct mesh_path *
mesh_path_lookup(struct ieee80211_sub_if_data *sdata, const u8 *dst)
{
 return mpath_lookup(sdata->u.mesh.mesh_paths, dst, sdata);
}
