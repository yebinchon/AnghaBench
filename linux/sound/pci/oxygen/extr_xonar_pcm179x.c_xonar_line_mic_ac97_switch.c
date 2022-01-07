
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int reg_lock; } ;


 unsigned int AC97_LINE ;
 int GPIO_INPUT_ROUTE ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void xonar_line_mic_ac97_switch(struct oxygen *chip,
           unsigned int reg, unsigned int mute)
{
 if (reg == AC97_LINE) {
  spin_lock_irq(&chip->reg_lock);
  oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
          mute ? GPIO_INPUT_ROUTE : 0,
          GPIO_INPUT_ROUTE);
  spin_unlock_irq(&chip->reg_lock);
 }
}
