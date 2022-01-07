
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1938 {int reg_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 unsigned char ESS_CMD_READREG ;
 int dev_dbg (int ,char*,unsigned char,unsigned char,unsigned char) ;
 unsigned char snd_es1938_get_byte (struct es1938*) ;
 int snd_es1938_write_cmd (struct es1938*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_es1938_bits(struct es1938 *chip, unsigned char reg, unsigned char mask,
      unsigned char val)
{
 unsigned long flags;
 unsigned char old, new, oval;
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_es1938_write_cmd(chip, ESS_CMD_READREG);
 snd_es1938_write_cmd(chip, reg);
 old = snd_es1938_get_byte(chip);
 oval = old & mask;
 if (val != oval) {
  snd_es1938_write_cmd(chip, reg);
  new = (old & ~mask) | (val & mask);
  snd_es1938_write_cmd(chip, new);
  dev_dbg(chip->card->dev, "Reg %02x was %02x, set to %02x\n",
      reg, old, new);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return oval;
}
