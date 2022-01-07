
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int iif; } ;


 TYPE_1__* IP6CB (struct sk_buff const*) ;

__attribute__((used)) static int sctp_v6_skb_iif(const struct sk_buff *skb)
{
 return IP6CB(skb)->iif;
}
