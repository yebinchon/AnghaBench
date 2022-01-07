
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmipci_pcm {unsigned int ch; int running; int is_dac; int needs_silencing; } ;
struct cmipci {unsigned int ctrl; int reg_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int CM_CH0_INT_EN ;
 unsigned int CM_CHEN0 ;
 unsigned int CM_PAUSE0 ;
 int CM_REG_FUNCTRL0 ;
 int CM_REG_INT_HLDCLR ;
 unsigned int CM_RST_CH0 ;
 int EINVAL ;






 int dev_dbg (int ,char*,unsigned int) ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,unsigned int) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,unsigned int) ;
 int snd_cmipci_write (struct cmipci*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_cmipci_pcm_trigger(struct cmipci *cm, struct cmipci_pcm *rec,
      int cmd)
{
 unsigned int inthld, chen, reset, pause;
 int result = 0;

 inthld = CM_CH0_INT_EN << rec->ch;
 chen = CM_CHEN0 << rec->ch;
 reset = CM_RST_CH0 << rec->ch;
 pause = CM_PAUSE0 << rec->ch;

 spin_lock(&cm->reg_lock);
 switch (cmd) {
 case 130:
  rec->running = 1;

  snd_cmipci_set_bit(cm, CM_REG_INT_HLDCLR, inthld);
  cm->ctrl |= chen;

  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl);
  dev_dbg(cm->card->dev, "functrl0 = %08x\n", cm->ctrl);
  break;
 case 129:
  rec->running = 0;

  snd_cmipci_clear_bit(cm, CM_REG_INT_HLDCLR, inthld);

  cm->ctrl &= ~chen;
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl | reset);
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl & ~reset);
  rec->needs_silencing = rec->is_dac;
  break;
 case 133:
 case 128:
  cm->ctrl |= pause;
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl);
  break;
 case 132:
 case 131:
  cm->ctrl &= ~pause;
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl);
  break;
 default:
  result = -EINVAL;
  break;
 }
 spin_unlock(&cm->reg_lock);
 return result;
}
