
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1938 {TYPE_1__* card; int mixer_lock; } ;
struct TYPE_2__ {int dev; } ;


 int MIXERADDR ;
 int MIXERDATA ;
 int SLSB_REG (struct es1938*,int ) ;
 int dev_dbg (int ,char*,unsigned char,int) ;
 int inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_es1938_mixer_read(struct es1938 *chip, unsigned char reg)
{
 int data;
 unsigned long flags;
 spin_lock_irqsave(&chip->mixer_lock, flags);
 outb(reg, SLSB_REG(chip, MIXERADDR));
 data = inb(SLSB_REG(chip, MIXERDATA));
 spin_unlock_irqrestore(&chip->mixer_lock, flags);
 dev_dbg(chip->card->dev, "Mixer reg %02x now is %02x\n", reg, data);
 return data;
}
