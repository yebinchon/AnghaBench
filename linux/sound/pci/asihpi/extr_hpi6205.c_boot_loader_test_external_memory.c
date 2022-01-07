
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct hpi_adapter_obj {TYPE_2__ pci; } ;
struct TYPE_3__ {int subsystem_device; } ;


 int HPI6205_ERROR_DSP_EXTMEM ;
 scalar_t__ boot_loader_test_memory (struct hpi_adapter_obj*,int,int,int) ;

__attribute__((used)) static u16 boot_loader_test_external_memory(struct hpi_adapter_obj *pao,
 int dsp_index)
{
 u32 dRAM_start_address = 0;
 u32 dRAM_size = 0;

 if (dsp_index == 0) {

  if (pao->pci.pci_dev->subsystem_device == 0x5000) {

   dRAM_start_address = 0x00400000;
   dRAM_size = 0x200000;

  } else
   return 0;
 } else if (dsp_index == 1) {

  dRAM_start_address = 0x80000000;
  dRAM_size = 0x200000;

 }

 if (boot_loader_test_memory(pao, dsp_index, dRAM_start_address,
   dRAM_size))
  return HPI6205_ERROR_DSP_EXTMEM;
 return 0;
}
