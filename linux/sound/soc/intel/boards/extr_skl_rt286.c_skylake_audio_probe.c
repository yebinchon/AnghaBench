
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct skl_rt286_private {int hdmi_pcm_list; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct skl_rt286_private* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_card (int *,TYPE_1__*) ;
 TYPE_1__ skylake_rt286 ;
 int snd_soc_card_set_drvdata (TYPE_1__*,struct skl_rt286_private*) ;

__attribute__((used)) static int skylake_audio_probe(struct platform_device *pdev)
{
 struct skl_rt286_private *ctx;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 INIT_LIST_HEAD(&ctx->hdmi_pcm_list);

 skylake_rt286.dev = &pdev->dev;
 snd_soc_card_set_drvdata(&skylake_rt286, ctx);

 return devm_snd_soc_register_card(&pdev->dev, &skylake_rt286);
}
