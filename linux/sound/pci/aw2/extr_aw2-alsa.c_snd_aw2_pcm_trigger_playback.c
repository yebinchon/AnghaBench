
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct aw2_pcm_device {int stream_number; struct aw2* chip; } ;
struct aw2 {int reg_lock; int saa7146; } ;


 int EINVAL ;


 int snd_aw2_saa7146_pcm_trigger_start_playback (int *,int ) ;
 int snd_aw2_saa7146_pcm_trigger_stop_playback (int *,int ) ;
 struct aw2_pcm_device* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_aw2_pcm_trigger_playback(struct snd_pcm_substream *substream,
     int cmd)
{
 int status = 0;
 struct aw2_pcm_device *pcm_device = snd_pcm_substream_chip(substream);
 struct aw2 *chip = pcm_device->chip;
 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 129:
  snd_aw2_saa7146_pcm_trigger_start_playback(&chip->saa7146,
          pcm_device->
          stream_number);
  break;
 case 128:
  snd_aw2_saa7146_pcm_trigger_stop_playback(&chip->saa7146,
         pcm_device->
         stream_number);
  break;
 default:
  status = -EINVAL;
 }
 spin_unlock(&chip->reg_lock);
 return status;
}
