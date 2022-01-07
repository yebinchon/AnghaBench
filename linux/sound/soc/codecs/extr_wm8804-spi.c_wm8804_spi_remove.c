
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int wm8804_remove (int *) ;

__attribute__((used)) static int wm8804_spi_remove(struct spi_device *spi)
{
 wm8804_remove(&spi->dev);
 return 0;
}
