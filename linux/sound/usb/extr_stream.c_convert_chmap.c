
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_chmap_elem {unsigned int* map; int channels; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int GFP_KERNEL ;
 unsigned int SNDRV_CHMAP_MONO ;
 unsigned int SNDRV_CHMAP_UNKNOWN ;
 int UAC_VERSION_2 ;
 struct snd_pcm_chmap_elem* kzalloc (int,int ) ;

__attribute__((used)) static struct snd_pcm_chmap_elem *convert_chmap(int channels, unsigned int bits,
      int protocol)
{
 static unsigned int uac1_maps[] = {
  152,
  150,
  153,
  148,
  140,
  139,
  151,
  149,
  146,
  140,
  139,
  138,
  0
 };
 static unsigned int uac2_maps[] = {
  152,
  150,
  153,
  148,
  145,
  142,
  151,
  149,
  146,
  140,
  139,
  138,
  136,
  137,
  134,
  131,
  132,
  130,
  135,
  133,
  147,
  143,
  129,
  128,
  154,
  144,
  141,
  0
 };
 struct snd_pcm_chmap_elem *chmap;
 const unsigned int *maps;
 int c;

 if (channels > ARRAY_SIZE(chmap->map))
  return ((void*)0);

 chmap = kzalloc(sizeof(*chmap), GFP_KERNEL);
 if (!chmap)
  return ((void*)0);

 maps = protocol == UAC_VERSION_2 ? uac2_maps : uac1_maps;
 chmap->channels = channels;
 c = 0;

 if (bits) {
  for (; bits && *maps; maps++, bits >>= 1)
   if (bits & 1)
    chmap->map[c++] = *maps;
 } else {


  if (channels == 1)
   chmap->map[c++] = SNDRV_CHMAP_MONO;
  else
   for (; c < channels && *maps; maps++)
    chmap->map[c++] = *maps;
 }

 for (; c < channels; c++)
  chmap->map[c] = SNDRV_CHMAP_UNKNOWN;

 return chmap;
}
