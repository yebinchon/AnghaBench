
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
struct urb {scalar_t__ transfer_buffer; } ;
struct ua101_stream {unsigned int frame_bytes; unsigned int buffer_pos; scalar_t__ period_pos; TYPE_1__* substream; } ;
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ period_size; int const* dma_area; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int memcpy (scalar_t__,int const*,unsigned int) ;

__attribute__((used)) static bool copy_playback_data(struct ua101_stream *stream, struct urb *urb,
          unsigned int frames)
{
 struct snd_pcm_runtime *runtime;
 unsigned int frame_bytes, frames1;
 const u8 *source;

 runtime = stream->substream->runtime;
 frame_bytes = stream->frame_bytes;
 source = runtime->dma_area + stream->buffer_pos * frame_bytes;
 if (stream->buffer_pos + frames <= runtime->buffer_size) {
  memcpy(urb->transfer_buffer, source, frames * frame_bytes);
 } else {

  frames1 = runtime->buffer_size - stream->buffer_pos;
  memcpy(urb->transfer_buffer, source, frames1 * frame_bytes);
  memcpy(urb->transfer_buffer + frames1 * frame_bytes,
         runtime->dma_area, (frames - frames1) * frame_bytes);
 }

 stream->buffer_pos += frames;
 if (stream->buffer_pos >= runtime->buffer_size)
  stream->buffer_pos -= runtime->buffer_size;
 stream->period_pos += frames;
 if (stream->period_pos >= runtime->period_size) {
  stream->period_pos -= runtime->period_size;
  return 1;
 }
 return 0;
}
