
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct idma_ctrl* private_data; } ;
struct idma_ctrl {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int idma_hardware ;
 int idma_irq ;
 int iis_irq ;
 int kfree (struct idma_ctrl*) ;
 struct idma_ctrl* kzalloc (int,int ) ;
 int pr_err (char*,int) ;
 int request_irq (int ,int ,int ,char*,struct idma_ctrl*) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int idma_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct idma_ctrl *prtd;
 int ret;

 snd_soc_set_runtime_hwparams(substream, &idma_hardware);

 prtd = kzalloc(sizeof(struct idma_ctrl), GFP_KERNEL);
 if (prtd == ((void*)0))
  return -ENOMEM;

 ret = request_irq(idma_irq, iis_irq, 0, "i2s", prtd);
 if (ret < 0) {
  pr_err("fail to claim i2s irq , ret = %d\n", ret);
  kfree(prtd);
  return ret;
 }

 spin_lock_init(&prtd->lock);

 runtime->private_data = prtd;

 return 0;
}
