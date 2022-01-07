
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int csum_unnecessary; } ;


 int skb_shared (struct sk_buff*) ;
 TYPE_1__* udp_skb_scratch (struct sk_buff*) ;

__attribute__((used)) static void udp_skb_csum_unnecessary_set(struct sk_buff *skb)
{
}
