
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int labels_extend ;
 int nf_ct_extend_unregister (int *) ;

void nf_conntrack_labels_fini(void)
{
 nf_ct_extend_unregister(&labels_extend);
}
