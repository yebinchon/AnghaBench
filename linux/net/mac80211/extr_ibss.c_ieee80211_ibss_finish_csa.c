
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int chan; } ;
struct ieee80211_if_ibss {TYPE_4__ chandef; int privacy; int ssid_len; int ssid; int bssid; } ;
struct TYPE_5__ {struct ieee80211_if_ibss ibss; } ;
struct ieee80211_sub_if_data {TYPE_4__ csa_chandef; TYPE_3__* local; TYPE_1__ u; } ;
struct cfg80211_bss {int channel; } ;
struct TYPE_6__ {int wiphy; } ;
struct TYPE_7__ {TYPE_2__ hw; } ;


 int IEEE80211_BSS_TYPE_IBSS ;
 int IEEE80211_PRIVACY (int ) ;
 struct cfg80211_bss* cfg80211_get_bss (int ,int ,int ,int ,int ,int ,int ) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int ieee80211_ibss_csa_beacon (struct ieee80211_sub_if_data*,int *) ;
 int is_zero_ether_addr (int ) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;

int ieee80211_ibss_finish_csa(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_ibss *ifibss = &sdata->u.ibss;
 struct cfg80211_bss *cbss;
 int err, changed = 0;

 sdata_assert_lock(sdata);


 if (!is_zero_ether_addr(ifibss->bssid)) {
  cbss = cfg80211_get_bss(sdata->local->hw.wiphy,
     ifibss->chandef.chan,
     ifibss->bssid, ifibss->ssid,
     ifibss->ssid_len,
     IEEE80211_BSS_TYPE_IBSS,
     IEEE80211_PRIVACY(ifibss->privacy));

  if (cbss) {
   cbss->channel = sdata->csa_chandef.chan;
   cfg80211_put_bss(sdata->local->hw.wiphy, cbss);
  }
 }

 ifibss->chandef = sdata->csa_chandef;


 err = ieee80211_ibss_csa_beacon(sdata, ((void*)0));
 if (err < 0)
  return err;

 changed |= err;

 return changed;
}
