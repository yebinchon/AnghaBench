
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_hal2 {int dummy; } ;


 int EINVAL ;


 int hal2_start_adc (struct snd_hal2*) ;
 int hal2_stop_adc (struct snd_hal2*) ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int hal2_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 129:
  hal2_start_adc(hal2);
  break;
 case 128:
  hal2_stop_adc(hal2);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
