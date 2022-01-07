
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct g12a_tohdmitx_input* playback_dma_data; } ;
struct g12a_tohdmitx_input {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct g12a_tohdmitx_input* kzalloc (int,int ) ;

__attribute__((used)) static int g12a_tohdmitx_input_probe(struct snd_soc_dai *dai)
{
 struct g12a_tohdmitx_input *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 dai->playback_dma_data = data;
 return 0;
}
