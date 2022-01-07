
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_INIT_POINTER (int ,int *) ;
 int ip_ct_attach ;
 int * nf_conntrack_attach ;
 int nf_conntrack_hook ;
 int nf_ct_hook ;

void nf_conntrack_init_end(void)
{

 RCU_INIT_POINTER(ip_ct_attach, nf_conntrack_attach);
 RCU_INIT_POINTER(nf_ct_hook, &nf_conntrack_hook);
}
