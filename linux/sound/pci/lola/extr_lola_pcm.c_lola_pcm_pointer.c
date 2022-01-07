
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct lola_stream {unsigned int bufsize; int dsd; } ;
struct lola {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int LPIB ;
 int bytes_to_frames (int ,unsigned int) ;
 unsigned int lola_dsd_read (struct lola*,int ,int ) ;
 struct lola_stream* lola_get_stream (struct snd_pcm_substream*) ;
 struct lola* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t lola_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct lola *chip = snd_pcm_substream_chip(substream);
 struct lola_stream *str = lola_get_stream(substream);
 unsigned int pos = lola_dsd_read(chip, str->dsd, LPIB);

 if (pos >= str->bufsize)
  pos = 0;
 return bytes_to_frames(substream->runtime, pos);
}
