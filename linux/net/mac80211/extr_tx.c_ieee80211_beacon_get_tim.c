
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_mutable_offsets {int tim_length; int tim_offset; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int monitors; } ;


 int BEACON_TX_STATUS ;
 int GFP_ATOMIC ;
 struct sk_buff* __ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_mutable_offsets*,int) ;
 TYPE_1__* hw_to_local (struct ieee80211_hw*) ;
 struct ieee80211_supported_band* ieee80211_get_sband (int ) ;
 scalar_t__ ieee80211_hw_check (struct ieee80211_hw*,int ) ;
 int ieee80211_tx_monitor (TYPE_1__*,struct sk_buff*,struct ieee80211_supported_band*,int,int,int,int *) ;
 int ieee80211_vif_get_shift (struct ieee80211_vif*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int vif_to_sdata (struct ieee80211_vif*) ;

struct sk_buff *ieee80211_beacon_get_tim(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      u16 *tim_offset, u16 *tim_length)
{
 struct ieee80211_mutable_offsets offs = {};
 struct sk_buff *bcn = __ieee80211_beacon_get(hw, vif, &offs, 0);
 struct sk_buff *copy;
 struct ieee80211_supported_band *sband;
 int shift;

 if (!bcn)
  return bcn;

 if (tim_offset)
  *tim_offset = offs.tim_offset;

 if (tim_length)
  *tim_length = offs.tim_length;

 if (ieee80211_hw_check(hw, BEACON_TX_STATUS) ||
     !hw_to_local(hw)->monitors)
  return bcn;


 copy = skb_copy(bcn, GFP_ATOMIC);
 if (!copy)
  return bcn;

 shift = ieee80211_vif_get_shift(vif);
 sband = ieee80211_get_sband(vif_to_sdata(vif));
 if (!sband)
  return bcn;

 ieee80211_tx_monitor(hw_to_local(hw), copy, sband, 1, shift, 0,
        ((void*)0));

 return bcn;
}
