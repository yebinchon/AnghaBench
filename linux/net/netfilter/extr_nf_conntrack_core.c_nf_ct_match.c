
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {TYPE_1__* tuplehash; } ;
struct TYPE_2__ {int tuple; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 scalar_t__ net_eq (int ,int ) ;
 int nf_ct_net (struct nf_conn const*) ;
 scalar_t__ nf_ct_tuple_equal (int *,int *) ;
 int nf_ct_zone (struct nf_conn const*) ;
 scalar_t__ nf_ct_zone_equal (struct nf_conn const*,int ,size_t) ;

__attribute__((used)) static inline bool
nf_ct_match(const struct nf_conn *ct1, const struct nf_conn *ct2)
{
 return nf_ct_tuple_equal(&ct1->tuplehash[IP_CT_DIR_ORIGINAL].tuple,
     &ct2->tuplehash[IP_CT_DIR_ORIGINAL].tuple) &&
        nf_ct_tuple_equal(&ct1->tuplehash[IP_CT_DIR_REPLY].tuple,
     &ct2->tuplehash[IP_CT_DIR_REPLY].tuple) &&
        nf_ct_zone_equal(ct1, nf_ct_zone(ct2), IP_CT_DIR_ORIGINAL) &&
        nf_ct_zone_equal(ct1, nf_ct_zone(ct2), IP_CT_DIR_REPLY) &&
        net_eq(nf_ct_net(ct1), nf_ct_net(ct2));
}
