
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_line6_pcm {int state_mutex; } ;
struct line6_pcm_stream {int period; } ;


 int LINE6_STREAM_PCM ;
 struct line6_pcm_stream* get_stream (struct snd_line6_pcm*,int ) ;
 int line6_buffer_acquire (struct snd_line6_pcm*,struct line6_pcm_stream*,int ,int ) ;
 int line6_buffer_release (struct snd_line6_pcm*,struct line6_pcm_stream*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

int snd_line6_hw_params(struct snd_pcm_substream *substream,
   struct snd_pcm_hw_params *hw_params)
{
 int ret;
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);
 struct line6_pcm_stream *pstr = get_stream(line6pcm, substream->stream);

 mutex_lock(&line6pcm->state_mutex);
 ret = line6_buffer_acquire(line6pcm, pstr, substream->stream,
                            LINE6_STREAM_PCM);
 if (ret < 0)
  goto error;

 ret = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));
 if (ret < 0) {
  line6_buffer_release(line6pcm, pstr, LINE6_STREAM_PCM);
  goto error;
 }

 pstr->period = params_period_bytes(hw_params);
 error:
 mutex_unlock(&line6pcm->state_mutex);
 return ret;
}
