
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spdifrx_data {int kclk; int * substream; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct stm32_spdifrx_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void stm32_spdifrx_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *cpu_dai)
{
 struct stm32_spdifrx_data *spdifrx = snd_soc_dai_get_drvdata(cpu_dai);

 spdifrx->substream = ((void*)0);
 clk_disable_unprepare(spdifrx->kclk);
}
