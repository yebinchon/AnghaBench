
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; int self_group; } ;
struct TYPE_2__ {int nonatomic; } ;


 int snd_pcm_group_unlock (int *,int ) ;

void snd_pcm_stream_unlock(struct snd_pcm_substream *substream)
{
 snd_pcm_group_unlock(&substream->self_group, substream->pcm->nonatomic);
}
