
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_compr_stream {struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct q6asm_dai_rtd* private_data; } ;
struct TYPE_2__ {int bytes; int addr; int area; } ;
struct q6asm_dai_rtd {TYPE_1__ dma_buffer; } ;
struct device {int dummy; } ;


 int DRV_NAME ;
 int dma_mmap_coherent (struct device*,struct vm_area_struct*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int q6asm_dai_compr_mmap(struct snd_compr_stream *stream,
  struct vm_area_struct *vma)
{
 struct snd_compr_runtime *runtime = stream->runtime;
 struct q6asm_dai_rtd *prtd = runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = stream->private_data;
 struct snd_soc_component *c = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct device *dev = c->dev;

 return dma_mmap_coherent(dev, vma,
   prtd->dma_buffer.area, prtd->dma_buffer.addr,
   prtd->dma_buffer.bytes);
}
