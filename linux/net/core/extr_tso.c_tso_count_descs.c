
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int gso_segs; int nr_frags; } ;


 TYPE_1__* skb_shinfo (struct sk_buff*) ;

int tso_count_descs(struct sk_buff *skb)
{

 return skb_shinfo(skb)->gso_segs * 2 + skb_shinfo(skb)->nr_frags;
}
