
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; } ;
struct snd_line6_pcm {int state_mutex; } ;
struct line6_pcm_stream {int dummy; } ;


 int LINE6_STREAM_PCM ;
 struct line6_pcm_stream* get_stream (struct snd_line6_pcm*,int ) ;
 int line6_buffer_release (struct snd_line6_pcm*,struct line6_pcm_stream*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

int snd_line6_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);
 struct line6_pcm_stream *pstr = get_stream(line6pcm, substream->stream);

 mutex_lock(&line6pcm->state_mutex);
 line6_buffer_release(line6pcm, pstr, LINE6_STREAM_PCM);
 mutex_unlock(&line6pcm->state_mutex);
 return snd_pcm_lib_free_pages(substream);
}
