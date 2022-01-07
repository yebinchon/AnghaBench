
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct ichdev {scalar_t__ pcm_open_flag; int pcm; } ;


 struct ichdev* get_ichdev (struct snd_pcm_substream*) ;
 int snd_ac97_pcm_close (int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0_hw_free(struct snd_pcm_substream *substream)
{
 struct ichdev *ichdev = get_ichdev(substream);

 if (ichdev->pcm_open_flag) {
  snd_ac97_pcm_close(ichdev->pcm);
  ichdev->pcm_open_flag = 0;
 }
 return snd_pcm_lib_free_pages(substream);
}
