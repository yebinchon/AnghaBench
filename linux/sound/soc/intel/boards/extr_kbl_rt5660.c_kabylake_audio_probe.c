
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; TYPE_1__* id_entry; } ;
struct kbl_codec_private {int hdmi_pcm_list; } ;
struct TYPE_2__ {scalar_t__ driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct kbl_codec_private* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 struct snd_soc_card* kabylake_audio_card ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct kbl_codec_private*) ;

__attribute__((used)) static int kabylake_audio_probe(struct platform_device *pdev)
{
 struct kbl_codec_private *ctx;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 INIT_LIST_HEAD(&ctx->hdmi_pcm_list);

 kabylake_audio_card =
  (struct snd_soc_card *)pdev->id_entry->driver_data;

 kabylake_audio_card->dev = &pdev->dev;
 snd_soc_card_set_drvdata(kabylake_audio_card, ctx);
 return devm_snd_soc_register_card(&pdev->dev, kabylake_audio_card);
}
