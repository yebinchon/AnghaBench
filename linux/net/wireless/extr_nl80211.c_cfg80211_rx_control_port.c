
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int __nl80211_rx_control_port (struct net_device*,struct sk_buff*,int,int ) ;
 int trace_cfg80211_return_bool (int) ;
 int trace_cfg80211_rx_control_port (struct net_device*,struct sk_buff*,int) ;

bool cfg80211_rx_control_port(struct net_device *dev,
         struct sk_buff *skb, bool unencrypted)
{
 int ret;

 trace_cfg80211_rx_control_port(dev, skb, unencrypted);
 ret = __nl80211_rx_control_port(dev, skb, unencrypted, GFP_ATOMIC);
 trace_cfg80211_return_bool(ret == 0);
 return ret == 0;
}
