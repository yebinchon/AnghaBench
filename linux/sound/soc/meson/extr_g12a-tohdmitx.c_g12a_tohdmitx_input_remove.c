
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int playback_dma_data; } ;


 int kfree (int ) ;

__attribute__((used)) static int g12a_tohdmitx_input_remove(struct snd_soc_dai *dai)
{
 kfree(dai->playback_dma_data);
 return 0;
}
