
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line6_pcm_stream {int dummy; } ;
struct snd_line6_pcm {struct line6_pcm_stream in; struct line6_pcm_stream out; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static inline struct line6_pcm_stream *
get_stream(struct snd_line6_pcm *line6pcm, int direction)
{
 return (direction == SNDRV_PCM_STREAM_PLAYBACK) ?
  &line6pcm->out : &line6pcm->in;
}
