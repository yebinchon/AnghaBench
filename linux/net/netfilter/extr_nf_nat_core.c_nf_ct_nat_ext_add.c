
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_nat {int dummy; } ;
struct nf_conn {int dummy; } ;


 int GFP_ATOMIC ;
 int NF_CT_EXT_NAT ;
 struct nf_conn_nat* nf_ct_ext_add (struct nf_conn*,int ,int ) ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 struct nf_conn_nat* nfct_nat (struct nf_conn*) ;

struct nf_conn_nat *nf_ct_nat_ext_add(struct nf_conn *ct)
{
 struct nf_conn_nat *nat = nfct_nat(ct);
 if (nat)
  return nat;

 if (!nf_ct_is_confirmed(ct))
  nat = nf_ct_ext_add(ct, NF_CT_EXT_NAT, GFP_ATOMIC);

 return nat;
}
