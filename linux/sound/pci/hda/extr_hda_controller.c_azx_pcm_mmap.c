
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct azx_pcm {struct azx* chip; } ;
struct azx {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* pcm_mmap_prepare ) (struct snd_pcm_substream*,struct vm_area_struct*) ;} ;


 int snd_pcm_lib_default_mmap (struct snd_pcm_substream*,struct vm_area_struct*) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*,struct vm_area_struct*) ;

__attribute__((used)) static int azx_pcm_mmap(struct snd_pcm_substream *substream,
   struct vm_area_struct *area)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 struct azx *chip = apcm->chip;
 if (chip->ops->pcm_mmap_prepare)
  chip->ops->pcm_mmap_prepare(substream, area);
 return snd_pcm_lib_default_mmap(substream, area);
}
