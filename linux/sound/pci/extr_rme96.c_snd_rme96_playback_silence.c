
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme96 {scalar_t__ iobase; } ;


 scalar_t__ RME96_IO_PLAY_BUFFER ;
 int memset_io (scalar_t__,int ,unsigned long) ;
 struct rme96* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_rme96_playback_silence(struct snd_pcm_substream *substream,
      int channel, unsigned long pos, unsigned long count)
{
 struct rme96 *rme96 = snd_pcm_substream_chip(substream);

 memset_io(rme96->iobase + RME96_IO_PLAY_BUFFER + pos,
    0, count);
 return 0;
}
