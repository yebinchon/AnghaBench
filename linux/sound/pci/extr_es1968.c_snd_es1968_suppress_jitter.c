
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esschan {int dummy; } ;
struct es1968 {int dummy; } ;


 int IDR0_DATA_PORT ;
 unsigned int __apu_get_register (struct es1968*,int,int) ;
 int __maestro_write (struct es1968*,int ,unsigned int) ;

__attribute__((used)) static void snd_es1968_suppress_jitter(struct es1968 *chip, struct esschan *es)
{
 unsigned int cp1;
 unsigned int cp2;
 unsigned int diff;

 cp1 = __apu_get_register(chip, 0, 5);
 cp2 = __apu_get_register(chip, 1, 5);
 diff = (cp1 > cp2 ? cp1 - cp2 : cp2 - cp1);

 if (diff > 1)
  __maestro_write(chip, IDR0_DATA_PORT, cp1);
}
