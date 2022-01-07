
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_es18xx {int * capture_a_substream; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_es18xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es18xx_capture_close(struct snd_pcm_substream *substream)
{
        struct snd_es18xx *chip = snd_pcm_substream_chip(substream);

        chip->capture_a_substream = ((void*)0);
 snd_pcm_lib_free_pages(substream);
        return 0;
}
