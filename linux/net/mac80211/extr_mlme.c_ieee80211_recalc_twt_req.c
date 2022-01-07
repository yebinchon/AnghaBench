
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int dummy; } ;
struct ieee802_11_elems {int dummy; } ;
struct TYPE_3__ {int twt_requester; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;


 int BSS_CHANGED_TWT ;
 int ieee80211_twt_req_supported (struct sta_info*,struct ieee802_11_elems*) ;

__attribute__((used)) static int ieee80211_recalc_twt_req(struct ieee80211_sub_if_data *sdata,
        struct sta_info *sta,
        struct ieee802_11_elems *elems)
{
 bool twt = ieee80211_twt_req_supported(sta, elems);

 if (sdata->vif.bss_conf.twt_requester != twt) {
  sdata->vif.bss_conf.twt_requester = twt;
  return BSS_CHANGED_TWT;
 }
 return 0;
}
