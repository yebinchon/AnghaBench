
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate; int params; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;


 int lock_params (struct snd_pcm_runtime*) ;
 int snd_pcm_oss_get_rate (struct snd_pcm_oss_file*) ;
 int unlock_params (struct snd_pcm_runtime*) ;

__attribute__((used)) static int snd_pcm_oss_set_rate(struct snd_pcm_oss_file *pcm_oss_file, int rate)
{
 int idx;

 for (idx = 1; idx >= 0; --idx) {
  struct snd_pcm_substream *substream = pcm_oss_file->streams[idx];
  struct snd_pcm_runtime *runtime;
  int err;

  if (substream == ((void*)0))
   continue;
  runtime = substream->runtime;
  if (rate < 1000)
   rate = 1000;
  else if (rate > 192000)
   rate = 192000;
  err = lock_params(runtime);
  if (err < 0)
   return err;
  if (runtime->oss.rate != rate) {
   runtime->oss.params = 1;
   runtime->oss.rate = rate;
  }
  unlock_params(runtime);
 }
 return snd_pcm_oss_get_rate(pcm_oss_file);
}
