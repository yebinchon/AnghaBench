
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; unsigned int dma_addr; int buffer_size; unsigned int period_size; int rate; int format; } ;
struct cmipci_pcm {int fmt; int shift; unsigned int offset; int dma_size; int ch; scalar_t__ running; scalar_t__ is_dac; } ;
struct cmipci {unsigned int ctrl; int reg_lock; scalar_t__ chip_version; TYPE_1__* card; scalar_t__ can_96k; } ;
struct TYPE_2__ {int dev; } ;


 int CM_ADC48K44K ;
 unsigned int CM_ASFC_MASK ;
 unsigned int CM_ASFC_SHIFT ;
 unsigned int CM_CH0FMT_MASK ;
 unsigned int CM_CH0FMT_SHIFT ;
 unsigned int CM_CH0_SRATE_128K ;
 unsigned int CM_CH0_SRATE_88K ;
 unsigned int CM_CH0_SRATE_96K ;
 int CM_CH0_SRATE_MASK ;
 unsigned int CM_CH1FMT_MASK ;
 unsigned int CM_CH1FMT_SHIFT ;
 unsigned int CM_CHADC0 ;
 unsigned int CM_CHADC1 ;
 unsigned int CM_DSFC_MASK ;
 unsigned int CM_DSFC_SHIFT ;
 unsigned int CM_REG_CH0_FRAME1 ;
 unsigned int CM_REG_CH0_FRAME2 ;
 unsigned int CM_REG_CH1_FRAME1 ;
 unsigned int CM_REG_CH1_FRAME2 ;
 unsigned int CM_REG_CHFORMAT ;
 int CM_REG_EXT_MISC ;
 unsigned int CM_REG_FUNCTRL0 ;
 unsigned int CM_REG_FUNCTRL1 ;
 int EINVAL ;
 int dev_dbg (int ,char*,...) ;
 scalar_t__ set_dac_channels (struct cmipci*,struct cmipci_pcm*,int) ;
 int snd_BUG () ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 unsigned int snd_cmipci_rate_freq (int) ;
 unsigned int snd_cmipci_read (struct cmipci*,unsigned int) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,int ) ;
 int snd_cmipci_write (struct cmipci*,unsigned int,unsigned int) ;
 int snd_cmipci_write_w (struct cmipci*,unsigned int,unsigned int) ;
 int snd_pcm_format_width (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_pcm_prepare(struct cmipci *cm, struct cmipci_pcm *rec,
     struct snd_pcm_substream *substream)
{
 unsigned int reg, freq, freq_ext, val;
 unsigned int period_size;
 struct snd_pcm_runtime *runtime = substream->runtime;

 rec->fmt = 0;
 rec->shift = 0;
 if (snd_pcm_format_width(runtime->format) >= 16) {
  rec->fmt |= 0x02;
  if (snd_pcm_format_width(runtime->format) > 16)
   rec->shift++;
 }
 if (runtime->channels > 1)
  rec->fmt |= 0x01;
 if (rec->is_dac && set_dac_channels(cm, rec, runtime->channels) < 0) {
  dev_dbg(cm->card->dev, "cannot set dac channels\n");
  return -EINVAL;
 }

 rec->offset = runtime->dma_addr;

 rec->dma_size = runtime->buffer_size << rec->shift;
 period_size = runtime->period_size << rec->shift;
 if (runtime->channels > 2) {

  rec->dma_size = (rec->dma_size * runtime->channels) / 2;
  period_size = (period_size * runtime->channels) / 2;
 }

 spin_lock_irq(&cm->reg_lock);


 reg = rec->ch ? CM_REG_CH1_FRAME1 : CM_REG_CH0_FRAME1;
 snd_cmipci_write(cm, reg, rec->offset);

 reg = rec->ch ? CM_REG_CH1_FRAME2 : CM_REG_CH0_FRAME2;
 snd_cmipci_write_w(cm, reg, rec->dma_size - 1);
 snd_cmipci_write_w(cm, reg + 2, period_size - 1);


 val = rec->ch ? CM_CHADC1 : CM_CHADC0;
 if (rec->is_dac)
  cm->ctrl &= ~val;
 else
  cm->ctrl |= val;
 snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl);



 freq = 0;
 freq_ext = 0;
 if (runtime->rate > 48000)
  switch (runtime->rate) {
  case 88200: freq_ext = CM_CH0_SRATE_88K; break;
  case 96000: freq_ext = CM_CH0_SRATE_96K; break;
  case 128000: freq_ext = CM_CH0_SRATE_128K; break;
  default: snd_BUG(); break;
  }
 else
  freq = snd_cmipci_rate_freq(runtime->rate);
 val = snd_cmipci_read(cm, CM_REG_FUNCTRL1);
 if (rec->ch) {
  val &= ~CM_DSFC_MASK;
  val |= (freq << CM_DSFC_SHIFT) & CM_DSFC_MASK;
 } else {
  val &= ~CM_ASFC_MASK;
  val |= (freq << CM_ASFC_SHIFT) & CM_ASFC_MASK;
 }
 snd_cmipci_write(cm, CM_REG_FUNCTRL1, val);
 dev_dbg(cm->card->dev, "functrl1 = %08x\n", val);


 val = snd_cmipci_read(cm, CM_REG_CHFORMAT);
 if (rec->ch) {
  val &= ~CM_CH1FMT_MASK;
  val |= rec->fmt << CM_CH1FMT_SHIFT;
 } else {
  val &= ~CM_CH0FMT_MASK;
  val |= rec->fmt << CM_CH0FMT_SHIFT;
 }
 if (cm->can_96k) {
  val &= ~(CM_CH0_SRATE_MASK << (rec->ch * 2));
  val |= freq_ext << (rec->ch * 2);
 }
 snd_cmipci_write(cm, CM_REG_CHFORMAT, val);
 dev_dbg(cm->card->dev, "chformat = %08x\n", val);

 if (!rec->is_dac && cm->chip_version) {
  if (runtime->rate > 44100)
   snd_cmipci_set_bit(cm, CM_REG_EXT_MISC, CM_ADC48K44K);
  else
   snd_cmipci_clear_bit(cm, CM_REG_EXT_MISC, CM_ADC48K44K);
 }

 rec->running = 0;
 spin_unlock_irq(&cm->reg_lock);

 return 0;
}
