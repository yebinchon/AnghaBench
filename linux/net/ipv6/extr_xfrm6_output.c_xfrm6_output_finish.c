
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 TYPE_1__* IP6CB (struct sk_buff*) ;
 int IP6SKB_XFRM_TRANSFORMED ;
 int memset (TYPE_1__*,int ,int) ;
 int xfrm_output (struct sock*,struct sk_buff*) ;

int xfrm6_output_finish(struct sock *sk, struct sk_buff *skb)
{
 memset(IP6CB(skb), 0, sizeof(*IP6CB(skb)));





 return xfrm_output(sk, skb);
}
