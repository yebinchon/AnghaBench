
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_ct_extend_register (int *) ;
 int nf_ct_seqadj_extend ;

int nf_conntrack_seqadj_init(void)
{
 return nf_ct_extend_register(&nf_ct_seqadj_extend);
}
