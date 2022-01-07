
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_ct_extend_unregister (int *) ;
 int nf_ct_seqadj_extend ;

void nf_conntrack_seqadj_fini(void)
{
 nf_ct_extend_unregister(&nf_ct_seqadj_extend);
}
