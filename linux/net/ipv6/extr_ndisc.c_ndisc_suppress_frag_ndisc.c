
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct TYPE_3__ {scalar_t__ suppress_frag_ndisc; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct TYPE_4__ {int flags; } ;


 TYPE_2__* IP6CB (struct sk_buff*) ;
 int IP6SKB_FRAGMENTED ;
 struct inet6_dev* __in6_dev_get (int ) ;
 int net_warn_ratelimited (char*) ;

__attribute__((used)) static bool ndisc_suppress_frag_ndisc(struct sk_buff *skb)
{
 struct inet6_dev *idev = __in6_dev_get(skb->dev);

 if (!idev)
  return 1;
 if (IP6CB(skb)->flags & IP6SKB_FRAGMENTED &&
     idev->cnf.suppress_frag_ndisc) {
  net_warn_ratelimited("Received fragmented ndisc packet. Carefully consider disabling suppress_frag_ndisc.\n");
  return 1;
 }
 return 0;
}
