
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct audio_stream {TYPE_1__* buffer; int dma; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {long relative_end; } ;


 int bytes_to_frames (int ,long) ;
 long get_dma_residue (int ) ;
 struct audio_stream* ss_to_as (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t alchemy_pcm_pointer(struct snd_pcm_substream *ss)
{
 struct audio_stream *stream = ss_to_as(ss);
 long location;

 location = get_dma_residue(stream->dma);
 location = stream->buffer->relative_end - location;
 if (location == -1)
  location = 0;
 return bytes_to_frames(ss->runtime, location);
}
