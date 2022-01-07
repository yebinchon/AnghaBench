
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int OXYGEN_2WIRE_CONTROL ;
 int OXYGEN_2WIRE_DATA ;
 int OXYGEN_2WIRE_DIR_WRITE ;
 int OXYGEN_2WIRE_MAP ;
 int msleep (int) ;
 int oxygen_write8 (struct oxygen*,int ,int) ;

void oxygen_write_i2c(struct oxygen *chip, u8 device, u8 map, u8 data)
{

 msleep(1);

 oxygen_write8(chip, OXYGEN_2WIRE_MAP, map);
 oxygen_write8(chip, OXYGEN_2WIRE_DATA, data);
 oxygen_write8(chip, OXYGEN_2WIRE_CONTROL,
        device | OXYGEN_2WIRE_DIR_WRITE);
}
