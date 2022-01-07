
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int self_group; } ;


 int snd_pcm_group_assign (struct snd_pcm_substream*,int *) ;
 int snd_pcm_stream_lock (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock (struct snd_pcm_substream*) ;

__attribute__((used)) static void relink_to_local(struct snd_pcm_substream *substream)
{
 snd_pcm_stream_lock(substream);
 snd_pcm_group_assign(substream, &substream->self_group);
 snd_pcm_stream_unlock(substream);
}
