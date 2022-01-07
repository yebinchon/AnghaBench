
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int hw_ready; } ;
struct snd_ml403_ac97cr {int enable_irq; int irq; TYPE_1__ ind_rec; } ;


 int CR_PLAYRESET ;
 int CR_REG (struct snd_ml403_ac97cr*,int ) ;
 int EINVAL ;
 int PDEBUG (int ,char*) ;
 int RESETFIFO ;


 int WORK_INFO ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int out_be32 (int ,int ) ;
 int snd_pcm_indirect2_stat (struct snd_pcm_substream*,TYPE_1__*) ;
 struct snd_ml403_ac97cr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_ml403_ac97cr_pcm_playback_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;
 int err = 0;

 ml403_ac97cr = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 129:
  PDEBUG(WORK_INFO, "trigger(playback): START\n");
  ml403_ac97cr->ind_rec.hw_ready = 1;


  out_be32(CR_REG(ml403_ac97cr, RESETFIFO), CR_PLAYRESET);


  ml403_ac97cr->enable_irq = 1;
  enable_irq(ml403_ac97cr->irq);
  break;
 case 128:
  PDEBUG(WORK_INFO, "trigger(playback): STOP\n");
  ml403_ac97cr->ind_rec.hw_ready = 0;




  disable_irq_nosync(ml403_ac97cr->irq);
  ml403_ac97cr->enable_irq = 0;
  break;
 default:
  err = -EINVAL;
  break;
 }
 PDEBUG(WORK_INFO, "trigger(playback): (done)\n");
 return err;
}
