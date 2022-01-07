
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcxhr_stream {int channels; int format; } ;
struct pcxhr_mgr {int setup_mutex; } ;
typedef int snd_pcm_format_t ;
struct TYPE_2__ {struct pcxhr_stream* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_pcxhr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcxhr_hw_params(struct snd_pcm_substream *subs,
      struct snd_pcm_hw_params *hw)
{
 struct snd_pcxhr *chip = snd_pcm_substream_chip(subs);
 struct pcxhr_mgr *mgr = chip->mgr;
 struct pcxhr_stream *stream = subs->runtime->private_data;
 snd_pcm_format_t format;
 int err;
 int channels;


 channels = params_channels(hw);


 format = params_format(hw);

 mutex_lock(&mgr->setup_mutex);

 stream->channels = channels;
 stream->format = format;


 err = snd_pcm_lib_malloc_pages(subs, params_buffer_bytes(hw));

 mutex_unlock(&mgr->setup_mutex);

 return err;
}
