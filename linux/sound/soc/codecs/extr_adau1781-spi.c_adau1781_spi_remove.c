
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int adau17x1_remove (int *) ;

__attribute__((used)) static int adau1781_spi_remove(struct spi_device *spi)
{
 adau17x1_remove(&spi->dev);
 return 0;
}
