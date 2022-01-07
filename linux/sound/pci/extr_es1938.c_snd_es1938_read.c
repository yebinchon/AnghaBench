
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1938 {TYPE_1__* card; int reg_lock; } ;
struct TYPE_2__ {int dev; } ;


 unsigned char ESS_CMD_READREG ;
 int dev_dbg (int ,char*,unsigned char,unsigned char) ;
 unsigned char snd_es1938_get_byte (struct es1938*) ;
 int snd_es1938_write_cmd (struct es1938*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char snd_es1938_read(struct es1938 *chip, unsigned char reg)
{
 unsigned char val;
 unsigned long flags;
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_es1938_write_cmd(chip, ESS_CMD_READREG);
 snd_es1938_write_cmd(chip, reg);
 val = snd_es1938_get_byte(chip);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 dev_dbg(chip->card->dev, "Reg %02x now is %02x\n", reg, val);
 return val;
}
