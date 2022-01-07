
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_oss_reg {struct snd_emux* private_data; int oper; int nvoices; int subtype; int type; } ;
struct snd_seq_device {int name; } ;
struct snd_emux {int card; int max_voices; int name; struct snd_seq_device* oss_synth; } ;


 int SAMPLE_TYPE_AWE32 ;
 struct snd_seq_oss_reg* SNDRV_SEQ_DEVICE_ARGPTR (struct snd_seq_device*) ;
 int SNDRV_SEQ_DEV_ID_OSS ;
 int SYNTH_TYPE_SAMPLE ;
 int oss_callback ;
 int snd_device_register (int ,struct snd_seq_device*) ;
 scalar_t__ snd_seq_device_new (int ,int,int ,int,struct snd_seq_device**) ;
 int strcpy (int ,int ) ;

void
snd_emux_init_seq_oss(struct snd_emux *emu)
{
 struct snd_seq_oss_reg *arg;
 struct snd_seq_device *dev;


 if (snd_seq_device_new(emu->card, 1, SNDRV_SEQ_DEV_ID_OSS,
          sizeof(struct snd_seq_oss_reg), &dev) < 0)
  return;

 emu->oss_synth = dev;
 strcpy(dev->name, emu->name);
 arg = SNDRV_SEQ_DEVICE_ARGPTR(dev);
 arg->type = SYNTH_TYPE_SAMPLE;
 arg->subtype = SAMPLE_TYPE_AWE32;
 arg->nvoices = emu->max_voices;
 arg->oper = oss_callback;
 arg->private_data = emu;


 snd_device_register(emu->card, dev);
}
