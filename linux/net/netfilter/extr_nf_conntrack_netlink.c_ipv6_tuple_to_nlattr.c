
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_7__ {int in6; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {int in6; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;


 int CTA_IP_V6_DST ;
 int CTA_IP_V6_SRC ;
 int EMSGSIZE ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;

__attribute__((used)) static int ipv6_tuple_to_nlattr(struct sk_buff *skb,
    const struct nf_conntrack_tuple *tuple)
{
 if (nla_put_in6_addr(skb, CTA_IP_V6_SRC, &tuple->src.u3.in6) ||
     nla_put_in6_addr(skb, CTA_IP_V6_DST, &tuple->dst.u3.in6))
  return -EMSGSIZE;
 return 0;
}
