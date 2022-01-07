
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_pcm {int kref; } ;


 int kref_put (int *,int ) ;
 int release_pcm ;

void snd_hda_codec_pcm_put(struct hda_pcm *pcm)
{
 kref_put(&pcm->kref, release_pcm);
}
