
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int lock; scalar_t__ coaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int nexthdr; } ;
struct rt2_hdr {TYPE_1__ rt_hdr; } ;
struct ipv6hdr {int daddr; } ;
struct in6_addr {int dummy; } ;


 int ENOENT ;
 int ipv6_addr_any (struct in6_addr*) ;
 int ipv6_addr_equal (int *,struct in6_addr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mip6_rthdr_input(struct xfrm_state *x, struct sk_buff *skb)
{
 const struct ipv6hdr *iph = ipv6_hdr(skb);
 struct rt2_hdr *rt2 = (struct rt2_hdr *)skb->data;
 int err = rt2->rt_hdr.nexthdr;

 spin_lock(&x->lock);
 if (!ipv6_addr_equal(&iph->daddr, (struct in6_addr *)x->coaddr) &&
     !ipv6_addr_any((struct in6_addr *)x->coaddr))
  err = -ENOENT;
 spin_unlock(&x->lock);

 return err;
}
