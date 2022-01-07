
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viadev {int dummy; } ;
struct via82xx {int pci; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;


 int clean_via_table (struct viadev*,struct snd_pcm_substream*,int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct via82xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_via82xx_hw_free(struct snd_pcm_substream *substream)
{
 struct via82xx *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;

 clean_via_table(viadev, substream, chip->pci);
 snd_pcm_lib_free_pages(substream);
 return 0;
}
