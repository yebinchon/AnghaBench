
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcm_runtime {TYPE_1__* out_urbs; } ;
struct hiface_chip {struct pcm_runtime* pcm; } ;
struct TYPE_2__ {struct pcm_runtime* buffer; } ;


 int PCM_N_URBS ;
 int kfree (struct pcm_runtime*) ;

__attribute__((used)) static void hiface_pcm_destroy(struct hiface_chip *chip)
{
 struct pcm_runtime *rt = chip->pcm;
 int i;

 for (i = 0; i < PCM_N_URBS; i++)
  kfree(rt->out_urbs[i].buffer);

 kfree(chip->pcm);
 chip->pcm = ((void*)0);
}
