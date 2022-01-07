
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;


 int snd_pcm_oss_disconnect_minor (struct snd_pcm*) ;
 int snd_pcm_oss_proc_done (struct snd_pcm*) ;

__attribute__((used)) static int snd_pcm_oss_unregister_minor(struct snd_pcm *pcm)
{
 snd_pcm_oss_disconnect_minor(pcm);
 snd_pcm_oss_proc_done(pcm);
 return 0;
}
