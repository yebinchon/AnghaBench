
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct snd_soc_card {TYPE_3__* dev; } ;
struct TYPE_9__ {int dmic_num; } ;
struct snd_soc_acpi_mach {TYPE_2__ mach_params; } ;
struct TYPE_10__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_3__ dev; TYPE_1__* id_entry; } ;
struct kbl_rt5663_private {void* sclk; void* mclk; int hdmi_pcm_list; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;


 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int constraints_dmic_2ch ;
 int constraints_dmic_channels ;
 int dev_err (TYPE_3__*,char*,int) ;
 int dev_info (TYPE_3__*,char*) ;
 void* devm_clk_get (TYPE_3__*,char*) ;
 struct kbl_rt5663_private* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_3__*,struct snd_soc_card*) ;
 int * dmic_constraints ;
 struct snd_soc_card* kabylake_audio_card ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct kbl_rt5663_private*) ;

__attribute__((used)) static int kabylake_audio_probe(struct platform_device *pdev)
{
 struct kbl_rt5663_private *ctx;
 struct snd_soc_acpi_mach *mach;
 int ret;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 INIT_LIST_HEAD(&ctx->hdmi_pcm_list);

 kabylake_audio_card =
  (struct snd_soc_card *)pdev->id_entry->driver_data;

 kabylake_audio_card->dev = &pdev->dev;
 snd_soc_card_set_drvdata(kabylake_audio_card, ctx);

 mach = (&pdev->dev)->platform_data;
 if (mach)
  dmic_constraints = mach->mach_params.dmic_num == 2 ?
   &constraints_dmic_2ch : &constraints_dmic_channels;

 ctx->mclk = devm_clk_get(&pdev->dev, "ssp1_mclk");
 if (IS_ERR(ctx->mclk)) {
  ret = PTR_ERR(ctx->mclk);
  if (ret == -ENOENT) {
   dev_info(&pdev->dev,
    "Failed to get ssp1_sclk, defer probe\n");
   return -EPROBE_DEFER;
  }

  dev_err(&pdev->dev, "Failed to get ssp1_mclk with err:%d\n",
        ret);
  return ret;
 }

 ctx->sclk = devm_clk_get(&pdev->dev, "ssp1_sclk");
 if (IS_ERR(ctx->sclk)) {
  ret = PTR_ERR(ctx->sclk);
  if (ret == -ENOENT) {
   dev_info(&pdev->dev,
    "Failed to get ssp1_sclk, defer probe\n");
   return -EPROBE_DEFER;
  }

  dev_err(&pdev->dev, "Failed to get ssp1_sclk with err:%d\n",
        ret);
  return ret;
 }

 return devm_snd_soc_register_card(&pdev->dev, kabylake_audio_card);
}
