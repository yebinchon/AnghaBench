
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 struct spi_device* g_spi ;

__attribute__((used)) static int rt5677_spi_probe(struct spi_device *spi)
{
 g_spi = spi;
 return 0;
}
