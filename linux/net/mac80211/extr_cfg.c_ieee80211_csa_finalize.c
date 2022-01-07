
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_sub_if_data {int wdev; TYPE_2__* local; } ;
struct TYPE_3__ {int wiphy; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int GFP_KERNEL ;
 scalar_t__ __ieee80211_csa_finalize (struct ieee80211_sub_if_data*) ;
 int cfg80211_stop_iface (int ,int *,int ) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*) ;

__attribute__((used)) static void ieee80211_csa_finalize(struct ieee80211_sub_if_data *sdata)
{
 if (__ieee80211_csa_finalize(sdata)) {
  sdata_info(sdata, "failed to finalize CSA, disconnecting\n");
  cfg80211_stop_iface(sdata->local->hw.wiphy, &sdata->wdev,
        GFP_KERNEL);
 }
}
