
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nm256 {int reg_lock; TYPE_1__* card; scalar_t__ badintrcount; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int NM_ACK_INT (struct nm256*,int) ;
 int NM_INT_REG ;
 int NM_MISC_INT_1 ;
 int NM_MISC_INT_2 ;
 int NM_PLAYBACK_INT ;
 int NM_RECORD_INT ;
 int dev_dbg (int ,char*,...) ;
 int snd_nm256_capture_update (struct nm256*) ;
 int snd_nm256_intr_check (struct nm256*) ;
 int snd_nm256_playback_update (struct nm256*) ;
 int snd_nm256_readb (struct nm256*,int) ;
 int snd_nm256_readw (struct nm256*,int ) ;
 int snd_nm256_writeb (struct nm256*,int,int) ;
 int snd_nm256_writew (struct nm256*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
snd_nm256_interrupt(int irq, void *dev_id)
{
 struct nm256 *chip = dev_id;
 u16 status;
 u8 cbyte;

 status = snd_nm256_readw(chip, NM_INT_REG);


 if (status == 0)
  return snd_nm256_intr_check(chip);

 chip->badintrcount = 0;



 spin_lock(&chip->reg_lock);
 if (status & NM_PLAYBACK_INT) {
  status &= ~NM_PLAYBACK_INT;
  NM_ACK_INT(chip, NM_PLAYBACK_INT);
  snd_nm256_playback_update(chip);
 }

 if (status & NM_RECORD_INT) {
  status &= ~NM_RECORD_INT;
  NM_ACK_INT(chip, NM_RECORD_INT);
  snd_nm256_capture_update(chip);
 }

 if (status & NM_MISC_INT_1) {
  status &= ~NM_MISC_INT_1;
  NM_ACK_INT(chip, NM_MISC_INT_1);
  dev_dbg(chip->card->dev, "NM256: Got misc interrupt #1\n");
  snd_nm256_writew(chip, NM_INT_REG, 0x8000);
  cbyte = snd_nm256_readb(chip, 0x400);
  snd_nm256_writeb(chip, 0x400, cbyte | 2);
 }

 if (status & NM_MISC_INT_2) {
  status &= ~NM_MISC_INT_2;
  NM_ACK_INT(chip, NM_MISC_INT_2);
  dev_dbg(chip->card->dev, "NM256: Got misc interrupt #2\n");
  cbyte = snd_nm256_readb(chip, 0x400);
  snd_nm256_writeb(chip, 0x400, cbyte & ~2);
 }


 if (status) {
  dev_dbg(chip->card->dev,
   "NM256: Fire in the hole! Unknown status 0x%x\n",
      status);

  NM_ACK_INT(chip, status);
 }

 spin_unlock(&chip->reg_lock);
 return IRQ_HANDLED;
}
