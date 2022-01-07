
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {struct snd_emu8000* private_data; } ;
struct snd_emu8000 {int * pcm; } ;



__attribute__((used)) static void snd_emu8000_pcm_free(struct snd_pcm *pcm)
{
 struct snd_emu8000 *emu = pcm->private_data;
 emu->pcm = ((void*)0);
}
