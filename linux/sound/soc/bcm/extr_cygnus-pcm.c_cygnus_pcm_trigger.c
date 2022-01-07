
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;




 int disable_intr (struct snd_pcm_substream*) ;
 int enable_intr (struct snd_pcm_substream*) ;

__attribute__((used)) static int cygnus_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
  enable_intr(substream);
  break;

 case 129:
 case 128:
  disable_intr(substream);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
