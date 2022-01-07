
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct idma_ctrl* private_data; } ;
struct idma_ctrl {int dummy; } ;


 int free_irq (int ,struct idma_ctrl*) ;
 int idma_irq ;
 int kfree (struct idma_ctrl*) ;
 int pr_err (char*) ;

__attribute__((used)) static int idma_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct idma_ctrl *prtd = runtime->private_data;

 free_irq(idma_irq, prtd);

 if (!prtd)
  pr_err("idma_close called with prtd == NULL\n");

 kfree(prtd);

 return 0;
}
