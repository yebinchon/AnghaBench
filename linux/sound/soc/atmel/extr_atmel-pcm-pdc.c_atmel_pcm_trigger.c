
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int dma_area; int buffer_size; struct atmel_runtime_data* private_data; } ;
struct atmel_runtime_data {int period_ptr; int dma_buffer; int period_size; struct atmel_pcm_dma_params* params; } ;
struct atmel_pcm_dma_params {int pdc_xfer_size; TYPE_3__* mask; TYPE_2__* ssc; TYPE_1__* pdc; } ;
struct TYPE_6__ {int ssc_endx; int ssc_endbuf; int pdc_enable; int pdc_disable; } ;
struct TYPE_5__ {int regs; } ;
struct TYPE_4__ {int xncr; int xnpr; int xcr; int xpr; } ;


 int ATMEL_PDC_PTCR ;
 int EINVAL ;






 int SSC_IER ;
 int SSC_PDC_PTCR ;
 int SSC_SR ;
 int pr_debug (char*,unsigned long,int ,...) ;
 int ssc_readx (int ,int ) ;
 int ssc_writex (int ,int ,int) ;

__attribute__((used)) static int atmel_pcm_trigger(struct snd_pcm_substream *substream,
 int cmd)
{
 struct snd_pcm_runtime *rtd = substream->runtime;
 struct atmel_runtime_data *prtd = rtd->private_data;
 struct atmel_pcm_dma_params *params = prtd->params;
 int ret = 0;

 pr_debug("atmel-pcm:buffer_size = %ld,"
  "dma_area = %p, dma_bytes = %zu\n",
  rtd->buffer_size, rtd->dma_area, rtd->dma_bytes);

 switch (cmd) {
 case 130:
  prtd->period_ptr = prtd->dma_buffer;

  ssc_writex(params->ssc->regs, params->pdc->xpr,
      prtd->period_ptr);
  ssc_writex(params->ssc->regs, params->pdc->xcr,
      prtd->period_size / params->pdc_xfer_size);

  prtd->period_ptr += prtd->period_size;
  ssc_writex(params->ssc->regs, params->pdc->xnpr,
      prtd->period_ptr);
  ssc_writex(params->ssc->regs, params->pdc->xncr,
      prtd->period_size / params->pdc_xfer_size);

  pr_debug("atmel-pcm: trigger: "
   "period_ptr=%lx, xpr=%u, "
   "xcr=%u, xnpr=%u, xncr=%u\n",
   (unsigned long)prtd->period_ptr,
   ssc_readx(params->ssc->regs, params->pdc->xpr),
   ssc_readx(params->ssc->regs, params->pdc->xcr),
   ssc_readx(params->ssc->regs, params->pdc->xnpr),
   ssc_readx(params->ssc->regs, params->pdc->xncr));

  ssc_writex(params->ssc->regs, SSC_IER,
      params->mask->ssc_endx | params->mask->ssc_endbuf);
  ssc_writex(params->ssc->regs, SSC_PDC_PTCR,
      params->mask->pdc_enable);

  pr_debug("sr=%u imr=%u\n",
   ssc_readx(params->ssc->regs, SSC_SR),
   ssc_readx(params->ssc->regs, SSC_IER));
  break;

 case 129:
 case 128:
 case 133:
  ssc_writex(params->ssc->regs, ATMEL_PDC_PTCR,
      params->mask->pdc_disable);
  break;

 case 131:
 case 132:
  ssc_writex(params->ssc->regs, ATMEL_PDC_PTCR,
      params->mask->pdc_enable);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
