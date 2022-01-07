
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int aic32x4_remove (int *) ;

__attribute__((used)) static int aic32x4_spi_remove(struct spi_device *spi)
{
 return aic32x4_remove(&spi->dev);
}
