
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dsp_ops {int id; } ;


 int ARRAY_SIZE (struct skl_dsp_ops const*) ;
 struct skl_dsp_ops const* dsp_ops ;

const struct skl_dsp_ops *skl_get_dsp_ops(int pci_id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dsp_ops); i++) {
  if (dsp_ops[i].id == pci_id)
   return &dsp_ops[i];
 }

 return ((void*)0);
}
