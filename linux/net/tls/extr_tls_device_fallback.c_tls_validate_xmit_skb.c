
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;


 TYPE_1__* tls_get_ctx (struct sock*) ;
 struct sk_buff* tls_sw_fallback (struct sock*,struct sk_buff*) ;

struct sk_buff *tls_validate_xmit_skb(struct sock *sk,
          struct net_device *dev,
          struct sk_buff *skb)
{
 if (dev == tls_get_ctx(sk)->netdev)
  return skb;

 return tls_sw_fallback(sk, skb);
}
