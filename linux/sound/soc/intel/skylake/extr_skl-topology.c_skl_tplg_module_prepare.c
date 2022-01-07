
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct skl_pipe {int p_params; } ;
struct skl_module_cfg {int dev_type; } ;
struct skl_dev {int dev; } ;




 int skl_pcm_host_dma_prepare (int ,int ) ;
 int skl_pcm_link_dma_prepare (int ,int ) ;

__attribute__((used)) static int skl_tplg_module_prepare(struct skl_dev *skl, struct skl_pipe *pipe,
  struct snd_soc_dapm_widget *w, struct skl_module_cfg *mcfg)
{
 switch (mcfg->dev_type) {
 case 129:
  return skl_pcm_host_dma_prepare(skl->dev, pipe->p_params);

 case 128:
  return skl_pcm_link_dma_prepare(skl->dev, pipe->p_params);
 }

 return 0;
}
