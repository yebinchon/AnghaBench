
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct dsp_obj {int prHPI_data; int prHPI_data_auto_inc; } ;


 scalar_t__ hpi_set_address (struct dsp_obj*,scalar_t__) ;
 scalar_t__ ioread32 (int ) ;
 int ioread32_rep (int ,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void hpi_read_block(struct dsp_obj *pdo, u32 address, u32 *pdata,
 u32 length)
{
 u16 length16 = length - 1;

 if (length == 0)
  return;

 if (hpi_set_address(pdo, address))
  return;

 ioread32_rep(pdo->prHPI_data_auto_inc, pdata, length16);



 *(pdata + length - 1) = ioread32(pdo->prHPI_data);
}
