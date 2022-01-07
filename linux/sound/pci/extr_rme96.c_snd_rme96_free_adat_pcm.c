
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {struct rme96* private_data; } ;
struct rme96 {int * adat_pcm; } ;



__attribute__((used)) static void
snd_rme96_free_adat_pcm(struct snd_pcm *pcm)
{
 struct rme96 *rme96 = pcm->private_data;
 rme96->adat_pcm = ((void*)0);
}
