
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int accepting_plinks; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int BSS_CHANGED_BEACON ;
 int mesh_plink_availables (struct ieee80211_sub_if_data*) ;

u32 mesh_accept_plinks_update(struct ieee80211_sub_if_data *sdata)
{
 bool free_plinks;
 u32 changed = 0;







 free_plinks = mesh_plink_availables(sdata);

 if (free_plinks != sdata->u.mesh.accepting_plinks) {
  sdata->u.mesh.accepting_plinks = free_plinks;
  changed = BSS_CHANGED_BEACON;
 }

 return changed;
}
