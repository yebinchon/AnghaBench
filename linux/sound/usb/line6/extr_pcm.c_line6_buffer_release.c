
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_line6_pcm {int dummy; } ;
struct line6_pcm_stream {int * buffer; int opened; } ;


 int clear_bit (int,int *) ;
 int kfree (int *) ;
 int line6_wait_clear_audio_urbs (struct snd_line6_pcm*,struct line6_pcm_stream*) ;

__attribute__((used)) static void line6_buffer_release(struct snd_line6_pcm *line6pcm,
     struct line6_pcm_stream *pstr, int type)
{
 clear_bit(type, &pstr->opened);
 if (!pstr->opened) {
  line6_wait_clear_audio_urbs(line6pcm, pstr);
  kfree(pstr->buffer);
  pstr->buffer = ((void*)0);
 }
}
