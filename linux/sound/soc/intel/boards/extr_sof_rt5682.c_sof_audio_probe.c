
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sof_card_private {int hdmi_pcm_list; int mclk; } ;
struct snd_soc_dai_link {int dummy; } ;
struct TYPE_12__ {int platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_13__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_14__ {int num_links; TYPE_2__* dev; struct snd_soc_dai_link* dai_link; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SOF_RT5682_MCLK_BYTCHT_EN ;
 int SOF_RT5682_MCLK_EN ;
 int SOF_RT5682_SSP_AMP_MASK ;
 int SOF_RT5682_SSP_AMP_SHIFT ;
 int SOF_RT5682_SSP_CODEC (int) ;
 int SOF_RT5682_SSP_CODEC_MASK ;
 int SOF_SPEAKER_AMP_PRESENT ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_2__*,char*,int) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 struct sof_card_private* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_2__*,TYPE_3__*) ;
 int dmi_check_system (int ) ;
 int is_legacy_cpu ;
 int snd_soc_card_set_drvdata (TYPE_3__*,struct sof_card_private*) ;
 int snd_soc_fixup_dai_links_platform_name (TYPE_3__*,int ) ;
 scalar_t__ soc_intel_is_byt () ;
 scalar_t__ soc_intel_is_cht () ;
 TYPE_3__ sof_audio_card_rt5682 ;
 struct snd_soc_dai_link* sof_card_dai_links_create (TYPE_2__*,int,int,int,int) ;
 int sof_rt5682_quirk ;
 int sof_rt5682_quirk_table ;

__attribute__((used)) static int sof_audio_probe(struct platform_device *pdev)
{
 struct snd_soc_dai_link *dai_links;
 struct snd_soc_acpi_mach *mach;
 struct sof_card_private *ctx;
 int dmic_be_num, hdmi_num;
 int ret, ssp_amp, ssp_codec;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 if (soc_intel_is_byt() || soc_intel_is_cht()) {
  is_legacy_cpu = 1;
  dmic_be_num = 0;
  hdmi_num = 0;

  sof_rt5682_quirk = SOF_RT5682_MCLK_EN |
      SOF_RT5682_MCLK_BYTCHT_EN |
      SOF_RT5682_SSP_CODEC(2);
 } else {
  dmic_be_num = 2;
  hdmi_num = 3;
 }

 dmi_check_system(sof_rt5682_quirk_table);


 if (sof_rt5682_quirk & SOF_RT5682_MCLK_BYTCHT_EN) {
  ctx->mclk = devm_clk_get(&pdev->dev, "pmc_plt_clk_3");
  if (IS_ERR(ctx->mclk)) {
   ret = PTR_ERR(ctx->mclk);

   dev_err(&pdev->dev,
    "Failed to get MCLK from pmc_plt_clk_3: %d\n",
    ret);
   return ret;
  }

  ret = clk_prepare_enable(ctx->mclk);
  if (ret < 0) {
   dev_err(&pdev->dev,
    "could not configure MCLK state");
   return ret;
  }
 }

 dev_dbg(&pdev->dev, "sof_rt5682_quirk = %lx\n", sof_rt5682_quirk);

 ssp_amp = (sof_rt5682_quirk & SOF_RT5682_SSP_AMP_MASK) >>
   SOF_RT5682_SSP_AMP_SHIFT;

 ssp_codec = sof_rt5682_quirk & SOF_RT5682_SSP_CODEC_MASK;


 sof_audio_card_rt5682.num_links = 1 + dmic_be_num + hdmi_num;

 if (sof_rt5682_quirk & SOF_SPEAKER_AMP_PRESENT)
  sof_audio_card_rt5682.num_links++;

 dai_links = sof_card_dai_links_create(&pdev->dev, ssp_codec, ssp_amp,
           dmic_be_num, hdmi_num);
 if (!dai_links)
  return -ENOMEM;

 sof_audio_card_rt5682.dai_link = dai_links;

 INIT_LIST_HEAD(&ctx->hdmi_pcm_list);

 sof_audio_card_rt5682.dev = &pdev->dev;
 mach = (&pdev->dev)->platform_data;


 ret = snd_soc_fixup_dai_links_platform_name(&sof_audio_card_rt5682,
          mach->mach_params.platform);
 if (ret)
  return ret;

 snd_soc_card_set_drvdata(&sof_audio_card_rt5682, ctx);

 return devm_snd_soc_register_card(&pdev->dev,
       &sof_audio_card_rt5682);
}
