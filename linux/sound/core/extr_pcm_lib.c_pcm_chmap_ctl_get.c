
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_chmap_elem {int channels; int * map; } ;
struct snd_pcm_chmap {struct snd_pcm_chmap_elem* chmap; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; int id; } ;
struct TYPE_4__ {int channels; } ;


 int EINVAL ;
 int ENODEV ;
 int memset (int *,int ,int) ;
 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_pcm_chmap* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct snd_pcm_substream* snd_pcm_chmap_substream (struct snd_pcm_chmap*,unsigned int) ;
 scalar_t__ valid_chmap_channels (struct snd_pcm_chmap*,int) ;

__attribute__((used)) static int pcm_chmap_ctl_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pcm_chmap *info = snd_kcontrol_chip(kcontrol);
 unsigned int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 struct snd_pcm_substream *substream;
 const struct snd_pcm_chmap_elem *map;

 if (!info->chmap)
  return -EINVAL;
 substream = snd_pcm_chmap_substream(info, idx);
 if (!substream)
  return -ENODEV;
 memset(ucontrol->value.integer.value, 0,
        sizeof(ucontrol->value.integer.value));
 if (!substream->runtime)
  return 0;
 for (map = info->chmap; map->channels; map++) {
  int i;
  if (map->channels == substream->runtime->channels &&
      valid_chmap_channels(info, map->channels)) {
   for (i = 0; i < map->channels; i++)
    ucontrol->value.integer.value[i] = map->map[i];
   return 0;
  }
 }
 return -EINVAL;
}
