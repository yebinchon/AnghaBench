
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee80211_select_queue (int ,struct sk_buff*) ;

__attribute__((used)) static u16 ieee80211_netdev_select_queue(struct net_device *dev,
      struct sk_buff *skb,
      struct net_device *sb_dev)
{
 return ieee80211_select_queue(IEEE80211_DEV_TO_SUB_IF(dev), skb);
}
