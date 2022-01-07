
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int status; } ;


 int IPS_SRC_NAT_DONE ;
 int __nf_nat_cleanup_conntrack (struct nf_conn*) ;

__attribute__((used)) static void nf_nat_cleanup_conntrack(struct nf_conn *ct)
{
 if (ct->status & IPS_SRC_NAT_DONE)
  __nf_nat_cleanup_conntrack(ct);
}
