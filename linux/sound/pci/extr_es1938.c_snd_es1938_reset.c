
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1938 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ESSSB_IREG_AUDIO2MODE ;
 int ESS_CMD_DMATYPE ;
 int ESS_CMD_DRQCONTROL ;
 int ESS_CMD_ENABLEAUDIO1 ;
 int ESS_CMD_ENABLEEXT ;
 int ESS_CMD_IRQCONTROL ;
 int READDATA ;
 int RESET ;
 int RESET_LOOP_TIMEOUT ;
 int SLSB_REG (struct es1938*,int ) ;
 int STATUS ;
 int dev_err (int ,char*) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int snd_es1938_bits (struct es1938*,int ,int,int) ;
 int snd_es1938_mixer_write (struct es1938*,int,int) ;
 int snd_es1938_write (struct es1938*,int ,int) ;
 int snd_es1938_write_cmd (struct es1938*,int ) ;

__attribute__((used)) static void snd_es1938_reset(struct es1938 *chip)
{
 int i;

 outb(3, SLSB_REG(chip, RESET));
 inb(SLSB_REG(chip, RESET));
 outb(0, SLSB_REG(chip, RESET));
 for (i = 0; i < RESET_LOOP_TIMEOUT; i++) {
  if (inb(SLSB_REG(chip, STATUS)) & 0x80) {
   if (inb(SLSB_REG(chip, READDATA)) == 0xaa)
    goto __next;
  }
 }
 dev_err(chip->card->dev, "ESS Solo-1 reset failed\n");

     __next:
 snd_es1938_write_cmd(chip, ESS_CMD_ENABLEEXT);


 snd_es1938_write(chip, ESS_CMD_DMATYPE, 2);




 snd_es1938_mixer_write(chip, ESSSB_IREG_AUDIO2MODE, 0x32);

 snd_es1938_bits(chip, ESS_CMD_IRQCONTROL, 0xf0, 0x50);
 snd_es1938_bits(chip, ESS_CMD_DRQCONTROL, 0xf0, 0x50);
 snd_es1938_write_cmd(chip, ESS_CMD_ENABLEAUDIO1);

 snd_es1938_mixer_write(chip, 0x54, 0x8f);
 snd_es1938_mixer_write(chip, 0x56, 0x95);
 snd_es1938_mixer_write(chip, 0x58, 0x94);
 snd_es1938_mixer_write(chip, 0x5a, 0x80);
}
