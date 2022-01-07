
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int snd_pcm_resume(struct snd_pcm_substream *substream)
{
 return -ENOSYS;
}
