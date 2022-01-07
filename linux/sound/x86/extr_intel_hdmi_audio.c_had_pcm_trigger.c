
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_intelhad {int need_reset; int had_spinlock; } ;


 int EINVAL ;





 int had_ack_irqs (struct snd_intelhad*) ;
 int had_enable_audio (struct snd_intelhad*,int) ;
 struct snd_intelhad* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int had_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 int retval = 0;
 struct snd_intelhad *intelhaddata;

 intelhaddata = snd_pcm_substream_chip(substream);

 spin_lock(&intelhaddata->had_spinlock);
 switch (cmd) {
 case 129:
 case 131:
 case 130:

  had_ack_irqs(intelhaddata);
  had_enable_audio(intelhaddata, 1);
  break;

 case 128:
 case 132:

  had_enable_audio(intelhaddata, 0);
  intelhaddata->need_reset = 1;
  break;

 default:
  retval = -EINVAL;
 }
 spin_unlock(&intelhaddata->had_spinlock);
 return retval;
}
