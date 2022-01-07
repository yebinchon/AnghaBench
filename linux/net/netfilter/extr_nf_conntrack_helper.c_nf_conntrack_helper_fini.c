
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int helper_extend ;
 int kvfree (int ) ;
 int nf_ct_extend_unregister (int *) ;
 int nf_ct_helper_hash ;

void nf_conntrack_helper_fini(void)
{
 nf_ct_extend_unregister(&helper_extend);
 kvfree(nf_ct_helper_hash);
}
