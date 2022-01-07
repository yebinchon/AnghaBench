
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int * capture_dma_data; } ;
struct rk_pdm_dev {int capture_dma_data; } ;


 struct rk_pdm_dev* to_info (struct snd_soc_dai*) ;

__attribute__((used)) static int rockchip_pdm_dai_probe(struct snd_soc_dai *dai)
{
 struct rk_pdm_dev *pdm = to_info(dai);

 dai->capture_dma_data = &pdm->capture_dma_data;

 return 0;
}
