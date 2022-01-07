
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON (int) ;
 int NF_CT_LABELS_MAX_SIZE ;
 int U8_MAX ;
 int labels_extend ;
 int nf_ct_extend_register (int *) ;

int nf_conntrack_labels_init(void)
{
 BUILD_BUG_ON(NF_CT_LABELS_MAX_SIZE / sizeof(long) >= U8_MAX);

 return nf_ct_extend_register(&labels_extend);
}
