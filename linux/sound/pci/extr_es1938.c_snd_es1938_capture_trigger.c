
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct es1938 {int active; } ;


 int ADC1 ;
 int EINVAL ;
 int ESS_CMD_DMACONTROL ;




 int snd_es1938_write (struct es1938*,int ,int) ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1938_capture_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);
 int val;
 switch (cmd) {
 case 130:
 case 131:
  val = 0x0f;
  chip->active |= ADC1;
  break;
 case 129:
 case 128:
  val = 0x00;
  chip->active &= ~ADC1;
  break;
 default:
  return -EINVAL;
 }
 snd_es1938_write(chip, ESS_CMD_DMACONTROL, val);
 return 0;
}
