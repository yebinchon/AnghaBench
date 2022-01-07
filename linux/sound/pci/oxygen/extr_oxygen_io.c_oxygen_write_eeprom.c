
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct oxygen {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int OXYGEN_EEPROM_BUSY ;
 int OXYGEN_EEPROM_CONTROL ;
 int OXYGEN_EEPROM_DATA ;
 unsigned int OXYGEN_EEPROM_DIR_WRITE ;
 int OXYGEN_EEPROM_STATUS ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int oxygen_read8 (struct oxygen*,int ) ;
 int oxygen_write16 (struct oxygen*,int ,int ) ;
 int oxygen_write8 (struct oxygen*,int ,unsigned int) ;

void oxygen_write_eeprom(struct oxygen *chip, unsigned int index, u16 value)
{
 unsigned int timeout;

 oxygen_write16(chip, OXYGEN_EEPROM_DATA, value);
 oxygen_write8(chip, OXYGEN_EEPROM_CONTROL,
        index | OXYGEN_EEPROM_DIR_WRITE);
 for (timeout = 0; timeout < 10; ++timeout) {
  msleep(1);
  if (!(oxygen_read8(chip, OXYGEN_EEPROM_STATUS)
        & OXYGEN_EEPROM_BUSY))
   return;
 }
 dev_err(chip->card->dev, "EEPROM write timeout\n");
}
