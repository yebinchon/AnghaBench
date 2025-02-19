
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_radiotap_header {int it_len; } ;
struct TYPE_2__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int dummy; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ IEEE80211_NUM_ACS ;
 int ieee80211_select_queue_80211 (struct ieee80211_sub_if_data*,struct sk_buff*,struct ieee80211_hdr*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 ieee80211_monitor_select_queue(struct net_device *dev,
       struct sk_buff *skb,
       struct net_device *sb_dev)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_hdr *hdr;
 struct ieee80211_radiotap_header *rtap = (void *)skb->data;

 if (local->hw.queues < IEEE80211_NUM_ACS)
  return 0;

 if (skb->len < 4 ||
     skb->len < le16_to_cpu(rtap->it_len) + 2 )
  return 0;

 hdr = (void *)((u8 *)skb->data + le16_to_cpu(rtap->it_len));

 return ieee80211_select_queue_80211(sdata, skb, hdr);
}
