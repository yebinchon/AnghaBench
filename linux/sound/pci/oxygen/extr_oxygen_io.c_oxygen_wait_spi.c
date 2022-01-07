
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxygen {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int OXYGEN_SPI_BUSY ;
 int OXYGEN_SPI_CONTROL ;
 int dev_err (int ,char*) ;
 int oxygen_read8 (struct oxygen*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int oxygen_wait_spi(struct oxygen *chip)
{
 unsigned int count;





 for (count = 50; count > 0; count--) {
  udelay(4);
  if ((oxygen_read8(chip, OXYGEN_SPI_CONTROL) &
      OXYGEN_SPI_BUSY) == 0)
   return 0;
 }
 dev_err(chip->card->dev, "oxygen: SPI wait timeout\n");
 return -EIO;
}
