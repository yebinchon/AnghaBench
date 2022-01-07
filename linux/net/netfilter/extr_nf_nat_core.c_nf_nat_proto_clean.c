
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int status; } ;


 int IPS_SRC_NAT_DONE_BIT ;
 int __nf_nat_cleanup_conntrack (struct nf_conn*) ;
 scalar_t__ nf_nat_proto_remove (struct nf_conn*,void*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int nf_nat_proto_clean(struct nf_conn *ct, void *data)
{
 if (nf_nat_proto_remove(ct, data))
  return 1;







 if (test_and_clear_bit(IPS_SRC_NAT_DONE_BIT, &ct->status))
  __nf_nat_cleanup_conntrack(ct);




 return 0;
}
