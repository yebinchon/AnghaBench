
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int mop500_ab8500_set_mclk (int ,int ) ;
 int snd_soc_card_get_drvdata (TYPE_1__*) ;

__attribute__((used)) static int mop500_ab8500_startup(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;


 return mop500_ab8500_set_mclk(rtd->card->dev,
    snd_soc_card_get_drvdata(rtd->card));
}
