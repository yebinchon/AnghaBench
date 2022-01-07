
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wm8776 {unsigned int** volumes; } ;
struct snd_maya44 {int mutex; int ice; struct snd_wm8776* wm; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct maya_vol_info {unsigned int maxval; unsigned int mute; unsigned int offset; unsigned int update; int mask; int* mux_bits; int * regs; } ;


 int WM8776_REG_ADC_MUX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;
 struct snd_maya44* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct maya_vol_info* vol_info ;
 int wm8776_write_bits (int ,struct snd_wm8776*,int ,int,unsigned int) ;

__attribute__((used)) static int maya_vol_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_maya44 *chip = snd_kcontrol_chip(kcontrol);
 struct snd_wm8776 *wm =
  &chip->wm[snd_ctl_get_ioff(kcontrol, &ucontrol->id)];
 unsigned int idx = kcontrol->private_value;
 struct maya_vol_info *vol = &vol_info[idx];
 unsigned int val, data;
 int ch, changed = 0;

 mutex_lock(&chip->mutex);
 for (ch = 0; ch < 2; ch++) {
  val = ucontrol->value.integer.value[ch];
  if (val > vol->maxval)
   val = vol->maxval;
  if (val == wm->volumes[idx][ch])
   continue;
  if (!val)
   data = vol->mute;
  else
   data = (val - 1) + vol->offset;
  data |= vol->update;
  changed |= wm8776_write_bits(chip->ice, wm, vol->regs[ch],
          vol->mask | vol->update, data);
  if (vol->mux_bits[ch])
   wm8776_write_bits(chip->ice, wm, WM8776_REG_ADC_MUX,
       vol->mux_bits[ch],
       val ? 0 : vol->mux_bits[ch]);
  wm->volumes[idx][ch] = val;
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
