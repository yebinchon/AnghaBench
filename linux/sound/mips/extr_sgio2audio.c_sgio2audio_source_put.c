
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sgio2audio {int ad1843; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ad1843_get_recsrc (int *) ;
 int ad1843_set_recsrc (int *,int ) ;
 struct snd_sgio2audio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sgio2audio_source_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sgio2audio *chip = snd_kcontrol_chip(kcontrol);
 int newsrc, oldsrc;

 oldsrc = ad1843_get_recsrc(&chip->ad1843);
 newsrc = ad1843_set_recsrc(&chip->ad1843,
       ucontrol->value.enumerated.item[0]);

 return newsrc != oldsrc;
}
