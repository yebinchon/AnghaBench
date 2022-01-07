
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1938 {int mixer_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int MIXERADDR ;
 int MIXERDATA ;
 int SLSB_REG (struct es1938*,int ) ;
 int dev_dbg (int ,char*,unsigned char,unsigned char,unsigned char) ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_es1938_mixer_bits(struct es1938 *chip, unsigned char reg,
     unsigned char mask, unsigned char val)
{
 unsigned long flags;
 unsigned char old, new, oval;
 spin_lock_irqsave(&chip->mixer_lock, flags);
 outb(reg, SLSB_REG(chip, MIXERADDR));
 old = inb(SLSB_REG(chip, MIXERDATA));
 oval = old & mask;
 if (val != oval) {
  new = (old & ~mask) | (val & mask);
  outb(new, SLSB_REG(chip, MIXERDATA));
  dev_dbg(chip->card->dev,
   "Mixer reg %02x was %02x, set to %02x\n",
      reg, old, new);
 }
 spin_unlock_irqrestore(&chip->mixer_lock, flags);
 return oval;
}
