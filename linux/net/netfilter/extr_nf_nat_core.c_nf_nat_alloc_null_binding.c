
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 int HOOK2MANIP (unsigned int) ;
 unsigned int __nf_nat_alloc_null_binding (struct nf_conn*,int ) ;

unsigned int
nf_nat_alloc_null_binding(struct nf_conn *ct, unsigned int hooknum)
{
 return __nf_nat_alloc_null_binding(ct, HOOK2MANIP(hooknum));
}
