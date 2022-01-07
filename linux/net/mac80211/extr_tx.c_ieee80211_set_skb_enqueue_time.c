
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int enqueue_time; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 TYPE_2__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int codel_get_time () ;

__attribute__((used)) static void ieee80211_set_skb_enqueue_time(struct sk_buff *skb)
{
 IEEE80211_SKB_CB(skb)->control.enqueue_time = codel_get_time();
}
