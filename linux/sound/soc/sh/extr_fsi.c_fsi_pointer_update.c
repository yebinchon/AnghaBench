
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ periods; } ;
struct fsi_stream {int buff_sample_pos; int period_samples; int period_pos; struct snd_pcm_substream* substream; } ;


 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void fsi_pointer_update(struct fsi_stream *io, int size)
{
 io->buff_sample_pos += size;

 if (io->buff_sample_pos >=
     io->period_samples * (io->period_pos + 1)) {
  struct snd_pcm_substream *substream = io->substream;
  struct snd_pcm_runtime *runtime = substream->runtime;

  io->period_pos++;

  if (io->period_pos >= runtime->periods) {
   io->buff_sample_pos = 0;
   io->period_pos = 0;
  }

  snd_pcm_period_elapsed(substream);
 }
}
