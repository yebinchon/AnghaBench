
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int master; int mask; int tuple; } ;
struct net {int dummy; } ;


 scalar_t__ net_eq (struct net const*,int ) ;
 int nf_ct_net (int ) ;
 scalar_t__ nf_ct_tuple_mask_cmp (struct nf_conntrack_tuple const*,int *,int *) ;
 scalar_t__ nf_ct_zone_equal_any (int ,struct nf_conntrack_zone const*) ;

__attribute__((used)) static bool
nf_ct_exp_equal(const struct nf_conntrack_tuple *tuple,
  const struct nf_conntrack_expect *i,
  const struct nf_conntrack_zone *zone,
  const struct net *net)
{
 return nf_ct_tuple_mask_cmp(tuple, &i->tuple, &i->mask) &&
        net_eq(net, nf_ct_net(i->master)) &&
        nf_ct_zone_equal_any(i->master, zone);
}
