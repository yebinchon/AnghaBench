
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int addr; } ;
struct sta_info {TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;


 int IEEE80211_FCTL_MOREDATA ;
 int IEEE80211_QOS_CTL_EOSP ;
 int IEEE80211_QOS_CTL_RSPI ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_PS_BUFFER ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int cpu_to_le16 (int ) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int mps_dbg (struct ieee80211_sub_if_data*,char*,char*,char*,int ) ;
 struct sk_buff* mps_qos_null_get (struct sta_info*) ;

__attribute__((used)) static void mpsp_trigger_send(struct sta_info *sta, bool rspi, bool eosp)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct sk_buff *skb;
 struct ieee80211_hdr *nullfunc;
 struct ieee80211_tx_info *info;
 u8 *qc;

 skb = mps_qos_null_get(sta);
 if (!skb)
  return;

 nullfunc = (struct ieee80211_hdr *) skb->data;
 if (!eosp)
  nullfunc->frame_control |=
    cpu_to_le16(IEEE80211_FCTL_MOREDATA);
 qc = ieee80211_get_qos_ctl(nullfunc);
 if (rspi)
  qc[1] |= (IEEE80211_QOS_CTL_RSPI >> 8);
 if (eosp)
  qc[0] |= IEEE80211_QOS_CTL_EOSP;

 info = IEEE80211_SKB_CB(skb);

 info->flags |= IEEE80211_TX_CTL_NO_PS_BUFFER |
         IEEE80211_TX_CTL_REQ_TX_STATUS;

 mps_dbg(sdata, "sending MPSP trigger%s%s to %pM\n",
  rspi ? " RSPI" : "", eosp ? " EOSP" : "", sta->sta.addr);

 ieee80211_tx_skb(sdata, skb);
}
