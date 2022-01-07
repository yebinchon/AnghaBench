
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u16 ;
struct es1968 {size_t** apu_map; } ;


 size_t NR_APUS ;
 int apu_data_set (struct es1968*,size_t) ;
 int apu_index_set (struct es1968*,size_t) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static void __apu_set_register(struct es1968 *chip, u16 channel, u8 reg, u16 data)
{
 if (snd_BUG_ON(channel >= NR_APUS))
  return;



 reg |= (channel << 4);
 apu_index_set(chip, reg);
 apu_data_set(chip, data);
}
