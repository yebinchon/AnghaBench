
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {struct es1968* private_data; } ;
struct es1968 {int * pcm; } ;


 int snd_es1968_free_dmabuf (struct es1968*) ;

__attribute__((used)) static void snd_es1968_pcm_free(struct snd_pcm *pcm)
{
 struct es1968 *esm = pcm->private_data;
 snd_es1968_free_dmabuf(esm);
 esm->pcm = ((void*)0);
}
