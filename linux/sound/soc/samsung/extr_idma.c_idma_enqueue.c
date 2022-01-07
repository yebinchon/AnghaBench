
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; struct idma_ctrl* private_data; } ;
struct idma_ctrl {int periodsz; int lock; void* token; } ;
struct TYPE_2__ {int lp_tx_addr; scalar_t__ regs; } ;


 int AHB_INTENLVL0 ;
 scalar_t__ I2SAHB ;
 scalar_t__ I2SLVL0ADDR ;
 scalar_t__ I2SSIZE ;
 int I2SSIZE_SHIFT ;
 int I2SSIZE_TRNMSK ;
 scalar_t__ I2SSTR0 ;
 TYPE_1__ idma ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int idma_enqueue(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct idma_ctrl *prtd = substream->runtime->private_data;
 u32 val;

 spin_lock(&prtd->lock);
 prtd->token = (void *) substream;
 spin_unlock(&prtd->lock);


 val = idma.lp_tx_addr + prtd->periodsz;
 writel(val, idma.regs + I2SLVL0ADDR);


 val = idma.lp_tx_addr;
 writel(val, idma.regs + I2SSTR0);





 val = readl(idma.regs + I2SSIZE);
 val &= ~(I2SSIZE_TRNMSK << I2SSIZE_SHIFT);
 val |= (((runtime->dma_bytes >> 2) &
   I2SSIZE_TRNMSK) << I2SSIZE_SHIFT);
 writel(val, idma.regs + I2SSIZE);

 val = readl(idma.regs + I2SAHB);
 val |= AHB_INTENLVL0;
 writel(val, idma.regs + I2SAHB);

 return 0;
}
