
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int mesh_pathtbl_unregister (struct ieee80211_sub_if_data*) ;
 int mesh_rmc_free (struct ieee80211_sub_if_data*) ;

void ieee80211_mesh_teardown_sdata(struct ieee80211_sub_if_data *sdata)
{
 mesh_rmc_free(sdata);
 mesh_pathtbl_unregister(sdata);
}
