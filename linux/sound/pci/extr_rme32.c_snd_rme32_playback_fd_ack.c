
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_indirect {scalar_t__ hw_ready; int hw_queue_size; } ;
struct rme32 {int running; int lock; struct snd_pcm_indirect capture_pcm; struct snd_pcm_indirect playback_pcm; } ;


 int RME32_BUFFER_SIZE ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_pcm_indirect_playback_transfer (struct snd_pcm_substream*,struct snd_pcm_indirect*,int ) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme32_pb_trans_copy ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_rme32_playback_fd_ack(struct snd_pcm_substream *substream)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 struct snd_pcm_indirect *rec, *cprec;

 rec = &rme32->playback_pcm;
 cprec = &rme32->capture_pcm;
 spin_lock(&rme32->lock);
 rec->hw_queue_size = RME32_BUFFER_SIZE;
 if (rme32->running & (1 << SNDRV_PCM_STREAM_CAPTURE))
  rec->hw_queue_size -= cprec->hw_ready;
 spin_unlock(&rme32->lock);
 return snd_pcm_indirect_playback_transfer(substream, rec,
        snd_rme32_pb_trans_copy);
}
