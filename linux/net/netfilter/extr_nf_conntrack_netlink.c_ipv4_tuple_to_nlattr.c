
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_7__ {int ip; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {int ip; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;


 int CTA_IP_V4_DST ;
 int CTA_IP_V4_SRC ;
 int EMSGSIZE ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ipv4_tuple_to_nlattr(struct sk_buff *skb,
    const struct nf_conntrack_tuple *tuple)
{
 if (nla_put_in_addr(skb, CTA_IP_V4_SRC, tuple->src.u3.ip) ||
     nla_put_in_addr(skb, CTA_IP_V4_DST, tuple->dst.u3.ip))
  return -EMSGSIZE;
 return 0;
}
