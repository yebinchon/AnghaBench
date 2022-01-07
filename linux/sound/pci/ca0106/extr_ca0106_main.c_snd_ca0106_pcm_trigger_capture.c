
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {int channel_id; int running; } ;
struct snd_ca0106 {int dummy; } ;


 int BASIC_INTERRUPT ;
 int EINVAL ;
 int EXTENDED_INT_MASK ;


 int snd_ca0106_ptr_read (struct snd_ca0106*,int ,int ) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,int ,int ,int) ;
 struct snd_ca0106* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ca0106_pcm_trigger_capture(struct snd_pcm_substream *substream,
        int cmd)
{
 struct snd_ca0106 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ca0106_pcm *epcm = runtime->private_data;
 int channel = epcm->channel_id;
 int result = 0;

 switch (cmd) {
 case 129:
  snd_ca0106_ptr_write(emu, EXTENDED_INT_MASK, 0, snd_ca0106_ptr_read(emu, EXTENDED_INT_MASK, 0) | (0x110000<<channel));
  snd_ca0106_ptr_write(emu, BASIC_INTERRUPT, 0, snd_ca0106_ptr_read(emu, BASIC_INTERRUPT, 0)|(0x100<<channel));
  epcm->running = 1;
  break;
 case 128:
  snd_ca0106_ptr_write(emu, BASIC_INTERRUPT, 0, snd_ca0106_ptr_read(emu, BASIC_INTERRUPT, 0) & ~(0x100<<channel));
  snd_ca0106_ptr_write(emu, EXTENDED_INT_MASK, 0, snd_ca0106_ptr_read(emu, EXTENDED_INT_MASK, 0) & ~(0x110000<<channel));
  epcm->running = 0;
  break;
 default:
  result = -EINVAL;
  break;
 }
 return result;
}
