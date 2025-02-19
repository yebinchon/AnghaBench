
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voice {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct voice* private_data; } ;
struct sis7019 {int dummy; } ;


 int sis_free_voice (struct sis7019*,struct voice*) ;
 struct sis7019* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int sis_substream_close(struct snd_pcm_substream *substream)
{
 struct sis7019 *sis = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct voice *voice = runtime->private_data;

 sis_free_voice(sis, voice);
 return 0;
}
