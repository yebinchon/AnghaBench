
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int spi_w8r8 (struct spi_device*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static void adau1781_spi_switch_mode(struct device *dev)
{
 struct spi_device *spi = to_spi_device(dev);





 spi_w8r8(spi, 0x00);
 spi_w8r8(spi, 0x00);
 spi_w8r8(spi, 0x00);
}
