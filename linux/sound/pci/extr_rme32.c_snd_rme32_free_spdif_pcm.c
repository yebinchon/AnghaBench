
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {scalar_t__ private_data; } ;
struct rme32 {int * spdif_pcm; } ;



__attribute__((used)) static void snd_rme32_free_spdif_pcm(struct snd_pcm *pcm)
{
 struct rme32 *rme32 = (struct rme32 *) pcm->private_data;
 rme32->spdif_pcm = ((void*)0);
}
