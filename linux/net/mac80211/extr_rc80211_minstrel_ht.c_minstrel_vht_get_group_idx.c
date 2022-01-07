
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_rate {int flags; } ;


 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_80_MHZ_WIDTH ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int VHT_GROUP_IDX (int ,int,int) ;
 int ieee80211_rate_get_vht_nss (struct ieee80211_tx_rate*) ;

__attribute__((used)) static int
minstrel_vht_get_group_idx(struct ieee80211_tx_rate *rate)
{
 return VHT_GROUP_IDX(ieee80211_rate_get_vht_nss(rate),
        !!(rate->flags & IEEE80211_TX_RC_SHORT_GI),
        !!(rate->flags & IEEE80211_TX_RC_40_MHZ_WIDTH) +
        2*!!(rate->flags & IEEE80211_TX_RC_80_MHZ_WIDTH));
}
