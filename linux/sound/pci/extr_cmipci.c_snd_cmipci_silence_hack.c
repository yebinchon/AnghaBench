
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {int channels; scalar_t__ dma_area; } ;
struct cmipci_pcm {int ch; scalar_t__ needs_silencing; TYPE_1__* substream; } ;
struct cmipci {int ctrl; int reg_lock; scalar_t__ can_96k; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int CM_ASFC_MASK ;
 int CM_ASFC_SHIFT ;
 int CM_CH0FMT_MASK ;
 int CM_CH0FMT_SHIFT ;
 int CM_CH0_SRATE_MASK ;
 int CM_CHEN0 ;
 unsigned int CM_REG_CH0_FRAME2 ;
 unsigned int CM_REG_CH1_FRAME2 ;
 unsigned int CM_REG_CHFORMAT ;
 unsigned int CM_REG_FUNCTRL0 ;
 unsigned int CM_REG_FUNCTRL1 ;
 unsigned int CM_RST_CH0 ;
 int PAGE_SIZE ;
 int memset (scalar_t__,int ,int) ;
 int msleep (int) ;
 int set_dac_channels (struct cmipci*,struct cmipci_pcm*,int) ;
 unsigned int snd_cmipci_read (struct cmipci*,unsigned int) ;
 int snd_cmipci_write (struct cmipci*,unsigned int,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void snd_cmipci_silence_hack(struct cmipci *cm, struct cmipci_pcm *rec)
{
 struct snd_pcm_runtime *runtime = rec->substream->runtime;
 unsigned int reg, val;

 if (rec->needs_silencing && runtime && runtime->dma_area) {

  memset(runtime->dma_area, 0, PAGE_SIZE);
  reg = rec->ch ? CM_REG_CH1_FRAME2 : CM_REG_CH0_FRAME2;
  val = ((PAGE_SIZE / 4) - 1) | (((PAGE_SIZE / 4) / 2 - 1) << 16);
  snd_cmipci_write(cm, reg, val);


  if (runtime->channels > 2)
   set_dac_channels(cm, rec, 2);
  spin_lock_irq(&cm->reg_lock);
  val = snd_cmipci_read(cm, CM_REG_FUNCTRL1);
  val &= ~(CM_ASFC_MASK << (rec->ch * 3));
  val |= (4 << CM_ASFC_SHIFT) << (rec->ch * 3);
  snd_cmipci_write(cm, CM_REG_FUNCTRL1, val);
  val = snd_cmipci_read(cm, CM_REG_CHFORMAT);
  val &= ~(CM_CH0FMT_MASK << (rec->ch * 2));
  val |= (3 << CM_CH0FMT_SHIFT) << (rec->ch * 2);
  if (cm->can_96k)
   val &= ~(CM_CH0_SRATE_MASK << (rec->ch * 2));
  snd_cmipci_write(cm, CM_REG_CHFORMAT, val);


  cm->ctrl |= CM_CHEN0 << rec->ch;
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl);
  spin_unlock_irq(&cm->reg_lock);

  msleep(1);


  spin_lock_irq(&cm->reg_lock);
  cm->ctrl &= ~(CM_CHEN0 << rec->ch);
  val = CM_RST_CH0 << rec->ch;
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl | val);
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl & ~val);
  spin_unlock_irq(&cm->reg_lock);

  rec->needs_silencing = 0;
 }
}
