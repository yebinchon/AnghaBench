
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int pos; } ;


 int bytes_to_frames (int ,int ) ;
 TYPE_1__* to_dmadata (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
au1xpsc_pcm_pointer(struct snd_pcm_substream *substream)
{
 return bytes_to_frames(substream->runtime, to_dmadata(substream)->pos);
}
