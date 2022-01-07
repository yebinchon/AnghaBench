
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_he_obss_pd {int enable; int min_offset; int max_offset; } ;
struct TYPE_2__ {struct ieee80211_he_obss_pd he_obss_pd; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_he_spr {int he_sr_control; int * optional; } ;


 int IEEE80211_HE_SPR_NON_SRG_OFFSET_PRESENT ;
 int IEEE80211_HE_SPR_SRG_INFORMATION_PRESENT ;
 int memset (struct ieee80211_he_obss_pd*,int ,int) ;

void
ieee80211_he_spr_ie_to_bss_conf(struct ieee80211_vif *vif,
    const struct ieee80211_he_spr *he_spr_ie_elem)
{
 struct ieee80211_he_obss_pd *he_obss_pd =
     &vif->bss_conf.he_obss_pd;
 const u8 *data;

 memset(he_obss_pd, 0, sizeof(*he_obss_pd));

 if (!he_spr_ie_elem)
  return;
 data = he_spr_ie_elem->optional;

 if (he_spr_ie_elem->he_sr_control &
     IEEE80211_HE_SPR_NON_SRG_OFFSET_PRESENT)
  data++;
 if (he_spr_ie_elem->he_sr_control &
     IEEE80211_HE_SPR_SRG_INFORMATION_PRESENT) {
  he_obss_pd->max_offset = *data++;
  he_obss_pd->min_offset = *data++;
  he_obss_pd->enable = 1;
 }
}
