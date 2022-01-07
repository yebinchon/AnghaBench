
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int pcm512x_remove (int *) ;

__attribute__((used)) static int pcm512x_spi_remove(struct spi_device *spi)
{
 pcm512x_remove(&spi->dev);
 return 0;
}
