
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int addr; } ;
struct sta_info {int sdata; TYPE_1__ sta; } ;
struct sk_buff {scalar_t__ data; } ;


 int IEEE80211_QOS_CTL_EOSP ;
 int WLAN_STA_PS_STA ;
 int * ieee80211_get_qos_ctl (void*) ;
 int ieee80211_tx_skb (int ,struct sk_buff*) ;
 int mps_dbg (int ,char*,int ) ;
 struct sk_buff* mps_qos_null_get (struct sta_info*) ;
 int test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void mps_qos_null_tx(struct sta_info *sta)
{
 struct sk_buff *skb;

 skb = mps_qos_null_get(sta);
 if (!skb)
  return;

 mps_dbg(sta->sdata, "announcing peer-specific power mode to %pM\n",
  sta->sta.addr);


 if (!test_sta_flag(sta, WLAN_STA_PS_STA)) {
  u8 *qc = ieee80211_get_qos_ctl((void *) skb->data);

  qc[0] |= IEEE80211_QOS_CTL_EOSP;
 }

 ieee80211_tx_skb(sta->sdata, skb);
}
