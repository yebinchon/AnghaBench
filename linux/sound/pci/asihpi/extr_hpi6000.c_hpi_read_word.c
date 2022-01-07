
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsp_obj {int prHPI_data; } ;


 scalar_t__ hpi_set_address (struct dsp_obj*,int ) ;
 int ioread32 (int ) ;

__attribute__((used)) static u32 hpi_read_word(struct dsp_obj *pdo, u32 address)
{
 u32 data = 0;

 if (hpi_set_address(pdo, address))
  return 0;


 data = ioread32(pdo->prHPI_data);
 return data;
}
