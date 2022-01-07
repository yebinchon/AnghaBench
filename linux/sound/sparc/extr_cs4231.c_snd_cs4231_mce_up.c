
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int mce_bit; int lock; int port; } ;


 int CS4231U (struct snd_cs4231*,int ) ;
 int CS4231_INIT ;
 int CS4231_MCE ;
 int REGSEL ;
 int __cs4231_readb (struct snd_cs4231*,int ) ;
 int __cs4231_writeb (struct snd_cs4231*,int,int ) ;
 int snd_cs4231_ready (struct snd_cs4231*) ;
 int snd_printdd (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4231_mce_up(struct snd_cs4231 *chip)
{
 unsigned long flags;
 int timeout;

 spin_lock_irqsave(&chip->lock, flags);
 snd_cs4231_ready(chip);




 chip->mce_bit |= CS4231_MCE;
 timeout = __cs4231_readb(chip, CS4231U(chip, REGSEL));
 if (timeout == 0x80)
  snd_printdd("mce_up [%p]: serious init problem - "
       "codec still busy\n",
       chip->port);
 if (!(timeout & CS4231_MCE))
  __cs4231_writeb(chip, chip->mce_bit | (timeout & 0x1f),
    CS4231U(chip, REGSEL));
 spin_unlock_irqrestore(&chip->lock, flags);
}
