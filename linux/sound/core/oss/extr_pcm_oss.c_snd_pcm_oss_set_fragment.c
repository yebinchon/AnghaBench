
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;


 int EINVAL ;
 int lock_params (struct snd_pcm_runtime*) ;
 int snd_pcm_oss_set_fragment1 (struct snd_pcm_substream*,unsigned int) ;
 int unlock_params (struct snd_pcm_runtime*) ;

__attribute__((used)) static int snd_pcm_oss_set_fragment(struct snd_pcm_oss_file *pcm_oss_file, unsigned int val)
{
 int err = -EINVAL, idx;

 for (idx = 1; idx >= 0; --idx) {
  struct snd_pcm_substream *substream = pcm_oss_file->streams[idx];
  struct snd_pcm_runtime *runtime;

  if (substream == ((void*)0))
   continue;
  runtime = substream->runtime;
  err = lock_params(runtime);
  if (err < 0)
   return err;
  err = snd_pcm_oss_set_fragment1(substream, val);
  unlock_params(runtime);
  if (err < 0)
   return err;
 }
 return err;
}
