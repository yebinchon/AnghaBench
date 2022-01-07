
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
struct TYPE_3__ {int h6; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int IP6CB (struct sk_buff*) ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 int memmove (int ,int *,int) ;

__attribute__((used)) static void tcp_v6_restore_cb(struct sk_buff *skb)
{




 memmove(IP6CB(skb), &TCP_SKB_CB(skb)->header.h6,
  sizeof(struct inet6_skb_parm));
}
