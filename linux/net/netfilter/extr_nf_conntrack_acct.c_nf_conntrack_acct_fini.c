
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acct_extend ;
 int nf_ct_extend_unregister (int *) ;

void nf_conntrack_acct_fini(void)
{
 nf_ct_extend_unregister(&acct_extend);
}
