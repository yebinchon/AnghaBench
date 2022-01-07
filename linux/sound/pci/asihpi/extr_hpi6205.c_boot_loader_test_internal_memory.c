
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hpi_adapter_obj {int dummy; } ;


 int HPI6205_ERROR_DSP_INTMEM ;
 int boot_loader_test_memory (struct hpi_adapter_obj*,int,int,int) ;

__attribute__((used)) static u16 boot_loader_test_internal_memory(struct hpi_adapter_obj *pao,
 int dsp_index)
{
 int err = 0;
 if (dsp_index == 0) {


  err = boot_loader_test_memory(pao, dsp_index, 0x00000000,
   0x10000);
  if (!err)

   err = boot_loader_test_memory(pao, dsp_index,
    0x80000000, 0x10000);
 } else if (dsp_index == 1) {


  err = boot_loader_test_memory(pao, dsp_index, 0x00000000,
   0x30000);
  if (!err)

   err = boot_loader_test_memory(pao, dsp_index,
    0x00030000, 0x10000);
 }

 if (err)
  return HPI6205_ERROR_DSP_INTMEM;
 else
  return 0;
}
