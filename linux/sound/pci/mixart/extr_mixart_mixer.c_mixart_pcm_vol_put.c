
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_mixart {int** digital_capture_volume; int** digital_playback_volume; TYPE_3__* mgr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct TYPE_6__ {int mixer_mutex; } ;


 int MIXART_DIGITAL_LEVEL_MAX ;
 int MIXART_DIGITAL_LEVEL_MIN ;
 int MIXART_PLAYBACK_STREAMS ;
 int MIXART_VOL_AES_MASK ;
 int MIXART_VOL_REC_MASK ;
 int mixart_update_capture_stream_level (struct snd_mixart*,int) ;
 int mixart_update_playback_stream_level (struct snd_mixart*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_BUG_ON (int) ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_mixart* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int mixart_pcm_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_mixart *chip = snd_kcontrol_chip(kcontrol);
 int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 int changed = 0;
 int is_capture = kcontrol->private_value & MIXART_VOL_REC_MASK;
 int is_aes = kcontrol->private_value & MIXART_VOL_AES_MASK;
 int* stored_volume;
 int i;
 mutex_lock(&chip->mgr->mixer_mutex);
 if (is_capture) {
  if (is_aes)
   stored_volume = chip->digital_capture_volume[1];
  else
   stored_volume = chip->digital_capture_volume[0];
 } else {
  snd_BUG_ON(idx >= MIXART_PLAYBACK_STREAMS);
  if (is_aes)
   stored_volume = chip->digital_playback_volume[MIXART_PLAYBACK_STREAMS + idx];
  else
   stored_volume = chip->digital_playback_volume[idx];
 }
 for (i = 0; i < 2; i++) {
  int vol = ucontrol->value.integer.value[i];
  if (vol < MIXART_DIGITAL_LEVEL_MIN ||
      vol > MIXART_DIGITAL_LEVEL_MAX)
   continue;
  if (stored_volume[i] != vol) {
   stored_volume[i] = vol;
   changed = 1;
  }
 }
 if (changed) {
  if (is_capture)
   mixart_update_capture_stream_level(chip, is_aes);
  else
   mixart_update_playback_stream_level(chip, is_aes, idx);
 }
 mutex_unlock(&chip->mgr->mixer_mutex);
 return changed;
}
