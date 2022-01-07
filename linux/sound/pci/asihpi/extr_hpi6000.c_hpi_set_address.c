
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsp_obj {int prHPI_address; int pa_parent_adapter; } ;


 int H6WRITE ;
 scalar_t__ PCI_TIMEOUT ;
 scalar_t__ hpi6000_check_PCI2040_error_flag (int ,int ) ;
 int iowrite32 (scalar_t__,int ) ;

__attribute__((used)) static int hpi_set_address(struct dsp_obj *pdo, u32 address)
{
 u32 timeout = PCI_TIMEOUT;

 do {
  iowrite32(address, pdo->prHPI_address);
 } while (hpi6000_check_PCI2040_error_flag(pdo->pa_parent_adapter,
   H6WRITE)
  && --timeout);

 if (timeout)
  return 0;

 return 1;
}
