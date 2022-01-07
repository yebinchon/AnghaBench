
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int master; int mask; int tuple; } ;


 scalar_t__ net_eq (int ,int ) ;
 int nf_ct_net (int ) ;
 scalar_t__ nf_ct_tuple_equal (int *,int *) ;
 scalar_t__ nf_ct_tuple_mask_equal (int *,int *) ;
 int nf_ct_zone (int ) ;
 scalar_t__ nf_ct_zone_equal_any (int ,int ) ;

__attribute__((used)) static inline int expect_matches(const struct nf_conntrack_expect *a,
     const struct nf_conntrack_expect *b)
{
 return nf_ct_tuple_equal(&a->tuple, &b->tuple) &&
        nf_ct_tuple_mask_equal(&a->mask, &b->mask) &&
        net_eq(nf_ct_net(a->master), nf_ct_net(b->master)) &&
        nf_ct_zone_equal_any(a->master, nf_ct_zone(b->master));
}
