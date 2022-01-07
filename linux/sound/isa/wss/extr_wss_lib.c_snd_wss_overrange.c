
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wss {TYPE_2__* capture_substream; int reg_lock; } ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {int overrange; } ;


 int CS4231_TEST_INIT ;
 unsigned char snd_wss_in (struct snd_wss*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_wss_overrange(struct snd_wss *chip)
{
 unsigned long flags;
 unsigned char res;

 spin_lock_irqsave(&chip->reg_lock, flags);
 res = snd_wss_in(chip, CS4231_TEST_INIT);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 if (res & (0x08 | 0x02))
  chip->capture_substream->runtime->overrange++;
}
