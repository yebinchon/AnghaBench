
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int snd_sb8dsp_interrupt (void*) ;

__attribute__((used)) static irqreturn_t jazz16_interrupt(int irq, void *chip)
{
 return snd_sb8dsp_interrupt(chip);
}
