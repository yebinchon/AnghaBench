
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; int number; TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mixart {int chip_idx; TYPE_3__* card; struct mixart_mgr* mgr; } ;
struct mixart_stream {int pcm_number; int channels; } ;
struct TYPE_4__ {scalar_t__ area; } ;
struct mixart_mgr {int setup_mutex; TYPE_1__ bufferinfo; } ;
struct mixart_bufferinfo {int available_length; int buffer_address; } ;
typedef int snd_pcm_format_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dma_bytes; int dma_addr; struct mixart_stream* private_data; } ;


 int MIXART_CAPTURE_STREAMS ;
 int MIXART_MAX_STREAM_PER_CARD ;
 int MIXART_PCM_ANALOG ;
 int MIXART_PCM_DIGITAL ;
 int MIXART_PLAYBACK_STREAMS ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_dbg (int ,char*,int,int ,int ,int ) ;
 int mixart_set_format (struct mixart_stream*,int ) ;
 int mixart_update_capture_stream_level (struct snd_mixart*,int) ;
 int mixart_update_playback_stream_level (struct snd_mixart*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_mixart* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_mixart_hw_params(struct snd_pcm_substream *subs,
                                struct snd_pcm_hw_params *hw)
{
 struct snd_mixart *chip = snd_pcm_substream_chip(subs);
 struct mixart_mgr *mgr = chip->mgr;
 struct mixart_stream *stream = subs->runtime->private_data;
 snd_pcm_format_t format;
 int err;
 int channels;


 channels = params_channels(hw);


 format = params_format(hw);

 mutex_lock(&mgr->setup_mutex);


 if( stream->pcm_number <= MIXART_PCM_DIGITAL ) {
  int is_aes = stream->pcm_number > MIXART_PCM_ANALOG;
  if( subs->stream == SNDRV_PCM_STREAM_PLAYBACK )
   mixart_update_playback_stream_level(chip, is_aes, subs->number);
  else
   mixart_update_capture_stream_level( chip, is_aes);
 }

 stream->channels = channels;


 err = mixart_set_format(stream, format);
 if(err < 0) {
  mutex_unlock(&mgr->setup_mutex);
  return err;
 }


 err = snd_pcm_lib_malloc_pages(subs, params_buffer_bytes(hw));

 if (err > 0) {
  struct mixart_bufferinfo *bufferinfo;
  int i = (chip->chip_idx * MIXART_MAX_STREAM_PER_CARD) + (stream->pcm_number * (MIXART_PLAYBACK_STREAMS+MIXART_CAPTURE_STREAMS)) + subs->number;
  if( subs->stream == SNDRV_PCM_STREAM_CAPTURE ) {
   i += MIXART_PLAYBACK_STREAMS;
  }

  bufferinfo = (struct mixart_bufferinfo *)chip->mgr->bufferinfo.area;
  bufferinfo[i].buffer_address = subs->runtime->dma_addr;
  bufferinfo[i].available_length = subs->runtime->dma_bytes;


  dev_dbg(chip->card->dev,
   "snd_mixart_hw_params(pcm %d) : dma_addr(%x) dma_bytes(%x) subs-number(%d)\n",
   i, bufferinfo[i].buffer_address,
    bufferinfo[i].available_length,
    subs->number);
 }
 mutex_unlock(&mgr->setup_mutex);

 return err;
}
