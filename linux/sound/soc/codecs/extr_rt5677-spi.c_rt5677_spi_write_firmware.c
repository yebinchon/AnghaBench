
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct firmware {int size; int data; } ;


 int rt5677_spi_write (int ,int ,int ) ;

int rt5677_spi_write_firmware(u32 addr, const struct firmware *fw)
{
 return rt5677_spi_write(addr, fw->data, fw->size);
}
