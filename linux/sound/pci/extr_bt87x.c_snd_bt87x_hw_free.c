
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_bt87x {int dummy; } ;


 int snd_bt87x_free_risc (struct snd_bt87x*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_bt87x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_bt87x_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_bt87x *chip = snd_pcm_substream_chip(substream);

 snd_bt87x_free_risc(chip);
 snd_pcm_lib_free_pages(substream);
 return 0;
}
