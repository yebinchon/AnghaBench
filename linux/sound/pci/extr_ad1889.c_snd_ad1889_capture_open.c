
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_ad1889 {struct snd_pcm_substream* csubs; } ;


 int snd_ad1889_capture_hw ;
 struct snd_ad1889* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_ad1889_capture_open(struct snd_pcm_substream *ss)
{
 struct snd_ad1889 *chip = snd_pcm_substream_chip(ss);
 struct snd_pcm_runtime *rt = ss->runtime;

 chip->csubs = ss;
 rt->hw = snd_ad1889_capture_hw;

 return 0;
}
