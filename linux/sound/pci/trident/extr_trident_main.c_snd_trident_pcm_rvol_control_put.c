
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident_pcm_mixer {unsigned short rvol; int * voice; } ;
struct snd_trident {int reg_lock; struct snd_trident_pcm_mixer* pcm_mixer; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 size_t snd_ctl_get_ioffnum (struct snd_kcontrol*,int *) ;
 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_trident_write_rvol_reg (struct snd_trident*,int *,unsigned short) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_pcm_rvol_control_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 struct snd_trident_pcm_mixer *mix = &trident->pcm_mixer[snd_ctl_get_ioffnum(kcontrol, &ucontrol->id)];
 unsigned short val;
 int change = 0;

 val = 0x7f - (ucontrol->value.integer.value[0] & 0x7f);
 spin_lock_irq(&trident->reg_lock);
 change = val != mix->rvol;
 mix->rvol = val;
 if (mix->voice != ((void*)0))
  snd_trident_write_rvol_reg(trident, mix->voice, val);
 spin_unlock_irq(&trident->reg_lock);
 return change;
}
