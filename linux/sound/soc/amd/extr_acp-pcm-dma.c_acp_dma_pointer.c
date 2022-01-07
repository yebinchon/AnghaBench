
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; int delay; int period_size; struct audio_substream_data* private_data; } ;
struct audio_substream_data {scalar_t__ bytescount; scalar_t__ dma_dscr_idx_1; int dma_curr_dscr; int acp_mmio; } ;
typedef int snd_pcm_uframes_t ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ acp_get_byte_count (struct audio_substream_data*) ;
 scalar_t__ acp_reg_read (int ,int ) ;
 int bytes_to_frames (struct snd_pcm_runtime*,scalar_t__) ;
 scalar_t__ do_div (scalar_t__,scalar_t__) ;
 scalar_t__ frames_to_bytes (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t acp_dma_pointer(struct snd_pcm_substream *substream)
{
 u32 buffersize;
 u32 pos = 0;
 u64 bytescount = 0;
 u16 dscr;
 u32 period_bytes, delay;

 struct snd_pcm_runtime *runtime = substream->runtime;
 struct audio_substream_data *rtd = runtime->private_data;

 if (!rtd)
  return -EINVAL;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
  period_bytes = frames_to_bytes(runtime, runtime->period_size);
  bytescount = acp_get_byte_count(rtd);
  if (bytescount >= rtd->bytescount)
   bytescount -= rtd->bytescount;
  if (bytescount < period_bytes) {
   pos = 0;
  } else {
   dscr = acp_reg_read(rtd->acp_mmio, rtd->dma_curr_dscr);
   if (dscr == rtd->dma_dscr_idx_1)
    pos = period_bytes;
   else
    pos = 0;
  }
  if (bytescount > 0) {
   delay = do_div(bytescount, period_bytes);
   runtime->delay = bytes_to_frames(runtime, delay);
  }
 } else {
  buffersize = frames_to_bytes(runtime, runtime->buffer_size);
  bytescount = acp_get_byte_count(rtd);
  if (bytescount > rtd->bytescount)
   bytescount -= rtd->bytescount;
  pos = do_div(bytescount, buffersize);
 }
 return bytes_to_frames(runtime, pos);
}
