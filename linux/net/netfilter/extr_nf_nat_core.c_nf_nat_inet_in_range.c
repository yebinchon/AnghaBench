
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int in6; int ip; } ;
struct TYPE_5__ {int in6; int ip; } ;
struct nf_nat_range2 {TYPE_3__ max_addr; TYPE_1__ min_addr; } ;
struct TYPE_6__ {int in6; int ip; } ;
struct TYPE_8__ {scalar_t__ l3num; TYPE_2__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ src; } ;


 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ ipv6_addr_cmp (int *,int *) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static bool nf_nat_inet_in_range(const struct nf_conntrack_tuple *t,
     const struct nf_nat_range2 *range)
{
 if (t->src.l3num == NFPROTO_IPV4)
  return ntohl(t->src.u3.ip) >= ntohl(range->min_addr.ip) &&
         ntohl(t->src.u3.ip) <= ntohl(range->max_addr.ip);

 return ipv6_addr_cmp(&t->src.u3.in6, &range->min_addr.in6) >= 0 &&
        ipv6_addr_cmp(&t->src.u3.in6, &range->max_addr.in6) <= 0;
}
