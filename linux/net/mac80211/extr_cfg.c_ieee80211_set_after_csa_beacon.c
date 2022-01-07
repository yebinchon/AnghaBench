
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int * next_beacon; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;


 int EINVAL ;



 int WARN_ON (int) ;
 int ieee80211_assign_beacon (struct ieee80211_sub_if_data*,int *,int *) ;
 int ieee80211_ibss_finish_csa (struct ieee80211_sub_if_data*) ;
 int ieee80211_mesh_finish_csa (struct ieee80211_sub_if_data*) ;
 int kfree (int *) ;

__attribute__((used)) static int ieee80211_set_after_csa_beacon(struct ieee80211_sub_if_data *sdata,
       u32 *changed)
{
 int err;

 switch (sdata->vif.type) {
 case 129:
  err = ieee80211_assign_beacon(sdata, sdata->u.ap.next_beacon,
           ((void*)0));
  kfree(sdata->u.ap.next_beacon);
  sdata->u.ap.next_beacon = ((void*)0);

  if (err < 0)
   return err;
  *changed |= err;
  break;
 case 130:
  err = ieee80211_ibss_finish_csa(sdata);
  if (err < 0)
   return err;
  *changed |= err;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 return 0;
}
