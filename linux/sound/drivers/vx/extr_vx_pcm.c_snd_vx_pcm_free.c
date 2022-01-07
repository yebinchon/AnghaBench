
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int * capture_pipes; int * playback_pipes; int ** pcm; } ;
struct snd_pcm {size_t device; struct vx_core* private_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void snd_vx_pcm_free(struct snd_pcm *pcm)
{
 struct vx_core *chip = pcm->private_data;
 chip->pcm[pcm->device] = ((void*)0);
 kfree(chip->playback_pipes);
 chip->playback_pipes = ((void*)0);
 kfree(chip->capture_pipes);
 chip->capture_pipes = ((void*)0);
}
