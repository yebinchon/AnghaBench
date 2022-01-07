
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPSKB_XFRM_TRANSFORMED ;
 int memset (TYPE_1__*,int ,int) ;
 int xfrm_output (struct sock*,struct sk_buff*) ;

int xfrm4_output_finish(struct sock *sk, struct sk_buff *skb)
{
 memset(IPCB(skb), 0, sizeof(*IPCB(skb)));





 return xfrm_output(sk, skb);
}
