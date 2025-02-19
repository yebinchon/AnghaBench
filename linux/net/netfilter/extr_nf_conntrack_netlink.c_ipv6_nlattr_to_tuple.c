
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_7__ {void* in6; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {void* in6; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;


 size_t CTA_IP_V6_DST ;
 size_t CTA_IP_V6_SRC ;
 int EINVAL ;
 void* nla_get_in6_addr (struct nlattr*) ;

__attribute__((used)) static int ipv6_nlattr_to_tuple(struct nlattr *tb[],
    struct nf_conntrack_tuple *t)
{
 if (!tb[CTA_IP_V6_SRC] || !tb[CTA_IP_V6_DST])
  return -EINVAL;

 t->src.u3.in6 = nla_get_in6_addr(tb[CTA_IP_V6_SRC]);
 t->dst.u3.in6 = nla_get_in6_addr(tb[CTA_IP_V6_DST]);

 return 0;
}
