
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int dev; } ;
typedef int gfp_t ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int cfg80211_tdls_oper_request (int ,int const*,int,int ,int ) ;
 int sdata_err (struct ieee80211_sub_if_data*,char*,int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_tdls_oper_request(struct ieee80211_vif *vif, const u8 *peer,
     enum nl80211_tdls_operation oper,
     u16 reason_code, gfp_t gfp)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 if (vif->type != NL80211_IFTYPE_STATION || !vif->bss_conf.assoc) {
  sdata_err(sdata, "Discarding TDLS oper %d - not STA or disconnected\n",
     oper);
  return;
 }

 cfg80211_tdls_oper_request(sdata->dev, peer, oper, reason_code, gfp);
}
