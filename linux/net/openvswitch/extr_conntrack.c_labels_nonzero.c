
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovs_key_ct_labels {scalar_t__* ct_labels_32; } ;


 size_t OVS_CT_LABELS_LEN_32 ;

__attribute__((used)) static bool labels_nonzero(const struct ovs_key_ct_labels *labels)
{
 size_t i;

 for (i = 0; i < OVS_CT_LABELS_LEN_32; i++)
  if (labels->ct_labels_32[i])
   return 1;

 return 0;
}
