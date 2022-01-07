
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_usb_substream {TYPE_1__* cur_audiofmt; } ;
struct snd_pcm_chmap_elem {int channels; int * map; } ;
struct snd_pcm_chmap {struct snd_usb_substream* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {struct snd_pcm_chmap_elem* chmap; } ;


 int memset (int *,int ,int) ;
 struct snd_pcm_chmap* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int usb_chmap_ctl_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pcm_chmap *info = snd_kcontrol_chip(kcontrol);
 struct snd_usb_substream *subs = info->private_data;
 struct snd_pcm_chmap_elem *chmap = ((void*)0);
 int i;

 memset(ucontrol->value.integer.value, 0,
        sizeof(ucontrol->value.integer.value));
 if (subs->cur_audiofmt)
  chmap = subs->cur_audiofmt->chmap;
 if (chmap) {
  for (i = 0; i < chmap->channels; i++)
   ucontrol->value.integer.value[i] = chmap->map[i];
 }
 return 0;
}
