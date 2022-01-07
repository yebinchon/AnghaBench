
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_nat_range2 {int flags; int max_proto; int min_proto; } ;
struct nf_conntrack_tuple {int dummy; } ;


 int NF_NAT_MANIP_SRC ;
 int NF_NAT_RANGE_MAP_IPS ;
 int NF_NAT_RANGE_PROTO_SPECIFIED ;
 int l4proto_in_range (struct nf_conntrack_tuple const*,int ,int *,int *) ;
 int nf_nat_inet_in_range (struct nf_conntrack_tuple const*,struct nf_nat_range2 const*) ;

__attribute__((used)) static int in_range(const struct nf_conntrack_tuple *tuple,
      const struct nf_nat_range2 *range)
{



 if (range->flags & NF_NAT_RANGE_MAP_IPS &&
     !nf_nat_inet_in_range(tuple, range))
  return 0;

 if (!(range->flags & NF_NAT_RANGE_PROTO_SPECIFIED))
  return 1;

 return l4proto_in_range(tuple, NF_NAT_MANIP_SRC,
    &range->min_proto, &range->max_proto);
}
