
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai_stream {scalar_t__ substream; } ;


 int snd_pcm_running (scalar_t__) ;

int rsnd_io_is_working(struct rsnd_dai_stream *io)
{

 if (io->substream)
  return snd_pcm_running(io->substream);

 return 0;
}
