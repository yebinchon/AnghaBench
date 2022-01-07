
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* data; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;



__attribute__((used)) static inline unsigned int eeprom_double(struct snd_ice1712 *ice, int idx)
{
 return (unsigned int)ice->eeprom.data[idx] | ((unsigned int)ice->eeprom.data[idx + 1] << 8);
}
