
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l4proto {scalar_t__ (* can_early_drop ) (struct nf_conn const*) ;} ;
struct nf_conn {int status; } ;


 int IPS_ASSURED_BIT ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (int ) ;
 int nf_ct_protonum (struct nf_conn const*) ;
 scalar_t__ stub1 (struct nf_conn const*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool gc_worker_can_early_drop(const struct nf_conn *ct)
{
 const struct nf_conntrack_l4proto *l4proto;

 if (!test_bit(IPS_ASSURED_BIT, &ct->status))
  return 1;

 l4proto = nf_ct_l4proto_find(nf_ct_protonum(ct));
 if (l4proto->can_early_drop && l4proto->can_early_drop(ct))
  return 1;

 return 0;
}
