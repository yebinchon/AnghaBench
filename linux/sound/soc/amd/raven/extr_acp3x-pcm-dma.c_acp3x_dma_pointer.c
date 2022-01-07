
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; int stream; } ;
struct i2s_stream_instance {scalar_t__ bytescount; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_3__ {int buffer_size; struct i2s_stream_instance* private_data; } ;


 scalar_t__ acp_get_byte_count (struct i2s_stream_instance*,int ) ;
 int bytes_to_frames (TYPE_1__*,int ) ;
 int do_div (scalar_t__,int ) ;
 int frames_to_bytes (TYPE_1__*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t acp3x_dma_pointer(struct snd_pcm_substream *substream)
{
 u32 pos = 0;
 u32 buffersize = 0;
 u64 bytescount = 0;
 struct i2s_stream_instance *rtd =
  substream->runtime->private_data;

 buffersize = frames_to_bytes(substream->runtime,
         substream->runtime->buffer_size);
 bytescount = acp_get_byte_count(rtd, substream->stream);
 if (bytescount > rtd->bytescount)
  bytescount -= rtd->bytescount;
 pos = do_div(bytescount, buffersize);
 return bytes_to_frames(substream->runtime, pos);
}
