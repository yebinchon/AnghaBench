
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct TYPE_2__ {int enqueue_time; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
typedef int codel_time_t ;



__attribute__((used)) static codel_time_t codel_skb_time_func(const struct sk_buff *skb)
{
 const struct ieee80211_tx_info *info;

 info = (const struct ieee80211_tx_info *)skb->cb;
 return info->control.enqueue_time;
}
