
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct hpi_hw_obj {int pCI2040HPI_error_count; scalar_t__ dw2040_HPICSR; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;


 scalar_t__ HPI_ERROR_REPORT ;
 int gw_pci_read_asserts ;
 int gw_pci_write_asserts ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (long,scalar_t__) ;

__attribute__((used)) static short hpi6000_check_PCI2040_error_flag(struct hpi_adapter_obj *pao,
 u16 read_or_write)
{
 u32 hPI_error;

 struct hpi_hw_obj *phw = pao->priv;


 hPI_error = ioread32(phw->dw2040_HPICSR + HPI_ERROR_REPORT);
 if (hPI_error) {

  iowrite32(0L, phw->dw2040_HPICSR + HPI_ERROR_REPORT);
  phw->pCI2040HPI_error_count++;
  if (read_or_write == 1)
   gw_pci_read_asserts++;
  else
   gw_pci_write_asserts++;
  return 1;
 } else
  return 0;
}
