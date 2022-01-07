
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


 int HPI6205_ERROR_DSP_PLD ;
 int boot_loader_read_mem32 (struct hpi_adapter_obj*,int,int) ;
 int boot_loader_write_mem32 (struct hpi_adapter_obj*,int,int,int) ;

__attribute__((used)) static u16 boot_loader_test_pld(struct hpi_adapter_obj *pao, int dsp_index)
{
 u32 data = 0;
 if (dsp_index == 0) {

  if (pao->pci.pci_dev->subsystem_device == 0x5000) {

   data = boot_loader_read_mem32(pao, dsp_index,
    0x03000008);
   if ((data & 0xF) != 0x5)
    return HPI6205_ERROR_DSP_PLD;
   data = boot_loader_read_mem32(pao, dsp_index,
    0x0300000C);
   if ((data & 0xF) != 0xA)
    return HPI6205_ERROR_DSP_PLD;
  }
 } else if (dsp_index == 1) {

  if (pao->pci.pci_dev->subsystem_device == 0x8700) {

   data = boot_loader_read_mem32(pao, dsp_index,
    0x90000010);
   if ((data & 0xFF) != 0xAA)
    return HPI6205_ERROR_DSP_PLD;

   boot_loader_write_mem32(pao, dsp_index, 0x90000000,
    0x02);
  }
 }
 return 0;
}
