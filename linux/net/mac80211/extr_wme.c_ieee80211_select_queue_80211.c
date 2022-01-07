
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int priority; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_2__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int frame_control; } ;


 scalar_t__ IEEE80211_NUM_ACS ;
 int IEEE80211_QOS_CTL_TAG1D_MASK ;
 int ieee80211_downgrade_queue (struct ieee80211_sub_if_data*,int *,struct sk_buff*) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_is_data_qos (int ) ;
 int * ieee802_1d_to_ac ;

u16 ieee80211_select_queue_80211(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb,
     struct ieee80211_hdr *hdr)
{
 struct ieee80211_local *local = sdata->local;
 u8 *p;

 if (local->hw.queues < IEEE80211_NUM_ACS)
  return 0;

 if (!ieee80211_is_data(hdr->frame_control)) {
  skb->priority = 7;
  return ieee802_1d_to_ac[skb->priority];
 }
 if (!ieee80211_is_data_qos(hdr->frame_control)) {
  skb->priority = 0;
  return ieee802_1d_to_ac[skb->priority];
 }

 p = ieee80211_get_qos_ctl(hdr);
 skb->priority = *p & IEEE80211_QOS_CTL_TAG1D_MASK;

 return ieee80211_downgrade_queue(sdata, ((void*)0), skb);
}
