
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl3 {int dummy; } ;
struct snd_es1688 {scalar_t__ mpu_port; TYPE_1__* pcm; int dma8; int irq; int port; } ;
struct snd_card {int dev; int longname; int shortname; int driver; struct snd_es1688* private_data; } ;
struct TYPE_2__ {char* name; } ;


 int MPU401_HW_ES1688 ;
 int OPL3_HW_OPL3 ;
 scalar_t__ SNDRV_AUTO_IRQ ;
 scalar_t__ SNDRV_AUTO_PORT ;
 int dev_warn (int ,char*,scalar_t__) ;
 scalar_t__* fm_port ;
 scalar_t__* mpu_irq ;
 scalar_t__* port ;
 int snd_card_register (struct snd_card*) ;
 int snd_es1688_mixer (struct snd_card*,struct snd_es1688*) ;
 int snd_es1688_pcm (struct snd_card*,struct snd_es1688*,int ) ;
 int snd_mpu401_uart_new (struct snd_card*,int ,int ,scalar_t__,int ,scalar_t__,int *) ;
 scalar_t__ snd_opl3_create (struct snd_card*,scalar_t__,scalar_t__,int ,int ,struct snd_opl3**) ;
 int snd_opl3_hwdep_new (struct snd_opl3*,int ,int,int *) ;
 int snprintf (int ,int,char*,char*,int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int snd_es1688_probe(struct snd_card *card, unsigned int n)
{
 struct snd_es1688 *chip = card->private_data;
 struct snd_opl3 *opl3;
 int error;

 error = snd_es1688_pcm(card, chip, 0);
 if (error < 0)
  return error;

 error = snd_es1688_mixer(card, chip);
 if (error < 0)
  return error;

 strlcpy(card->driver, "ES1688", sizeof(card->driver));
 strlcpy(card->shortname, chip->pcm->name, sizeof(card->shortname));
 snprintf(card->longname, sizeof(card->longname),
  "%s at 0x%lx, irq %i, dma %i", chip->pcm->name, chip->port,
   chip->irq, chip->dma8);

 if (fm_port[n] == SNDRV_AUTO_PORT)
  fm_port[n] = port[n];

 if (fm_port[n] > 0) {
  if (snd_opl3_create(card, fm_port[n], fm_port[n] + 2,
    OPL3_HW_OPL3, 0, &opl3) < 0)
   dev_warn(card->dev,
     "opl3 not detected at 0x%lx\n", fm_port[n]);
  else {
   error = snd_opl3_hwdep_new(opl3, 0, 1, ((void*)0));
   if (error < 0)
    return error;
  }
 }

 if (mpu_irq[n] >= 0 && mpu_irq[n] != SNDRV_AUTO_IRQ &&
   chip->mpu_port > 0) {
  error = snd_mpu401_uart_new(card, 0, MPU401_HW_ES1688,
    chip->mpu_port, 0,
    mpu_irq[n], ((void*)0));
  if (error < 0)
   return error;
 }

 return snd_card_register(card);
}
