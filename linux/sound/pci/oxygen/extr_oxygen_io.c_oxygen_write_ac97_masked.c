
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct oxygen {int dummy; } ;


 int oxygen_read_ac97 (struct oxygen*,unsigned int,unsigned int) ;
 int oxygen_write_ac97 (struct oxygen*,unsigned int,unsigned int,int) ;

void oxygen_write_ac97_masked(struct oxygen *chip, unsigned int codec,
         unsigned int index, u16 data, u16 mask)
{
 u16 value = oxygen_read_ac97(chip, codec, index);
 value &= ~mask;
 value |= data & mask;
 oxygen_write_ac97(chip, codec, index, value);
}
