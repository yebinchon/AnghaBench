
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct snd_soc_dai_link_component {char* dai_name; struct device_node* of_node; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_13__ {int num_links; int num_dapm_widgets; int dapm_widgets; TYPE_1__* dai_link; int owner; TYPE_5__* dev; } ;
struct TYPE_12__ {int num_cpus; int num_codecs; int num_platforms; char* name; char* stream_name; int dai_fmt; int * init; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* cpus; struct snd_soc_dai_link_component* codecs; } ;
struct imx_sgtl5000_data {int codec_clk; TYPE_2__ card; TYPE_1__ dai; int clk_frequency; } ;
struct i2c_client {int dev; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IMX_AUDMUX_V2_PDCR_RXDSEL (int) ;
 int IMX_AUDMUX_V2_PTCR_SYN ;
 int IMX_AUDMUX_V2_PTCR_TCLKDIR ;
 int IMX_AUDMUX_V2_PTCR_TCSEL (int) ;
 int IMX_AUDMUX_V2_PTCR_TFSDIR ;
 int IMX_AUDMUX_V2_PTCR_TFSEL (int) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SND_SOC_DAIFMT_CBM_CFM ;
 int SND_SOC_DAIFMT_I2S ;
 int SND_SOC_DAIFMT_NB_NF ;
 int THIS_MODULE ;
 int clk_get (int *,int *) ;
 int clk_get_rate (int ) ;
 int clk_put (int ) ;
 int dev_dbg (TYPE_5__*,char*) ;
 int dev_err (TYPE_5__*,char*,...) ;
 void* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_5__*,TYPE_2__*) ;
 int imx_audmux_v2_configure_port (int,int,int ) ;
 int imx_sgtl5000_dai_init ;
 int imx_sgtl5000_dapm_widgets ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct i2c_client* of_find_i2c_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 int put_device (TYPE_5__*) ;
 int snd_soc_card_set_drvdata (TYPE_2__*,struct imx_sgtl5000_data*) ;
 int snd_soc_of_parse_audio_routing (TYPE_2__*,char*) ;
 int snd_soc_of_parse_card_name (TYPE_2__*,char*) ;

__attribute__((used)) static int imx_sgtl5000_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct device_node *ssi_np, *codec_np;
 struct platform_device *ssi_pdev;
 struct i2c_client *codec_dev;
 struct imx_sgtl5000_data *data = ((void*)0);
 struct snd_soc_dai_link_component *comp;
 int int_port, ext_port;
 int ret;

 ret = of_property_read_u32(np, "mux-int-port", &int_port);
 if (ret) {
  dev_err(&pdev->dev, "mux-int-port missing or invalid\n");
  return ret;
 }
 ret = of_property_read_u32(np, "mux-ext-port", &ext_port);
 if (ret) {
  dev_err(&pdev->dev, "mux-ext-port missing or invalid\n");
  return ret;
 }





 int_port--;
 ext_port--;
 ret = imx_audmux_v2_configure_port(int_port,
   IMX_AUDMUX_V2_PTCR_SYN |
   IMX_AUDMUX_V2_PTCR_TFSEL(ext_port) |
   IMX_AUDMUX_V2_PTCR_TCSEL(ext_port) |
   IMX_AUDMUX_V2_PTCR_TFSDIR |
   IMX_AUDMUX_V2_PTCR_TCLKDIR,
   IMX_AUDMUX_V2_PDCR_RXDSEL(ext_port));
 if (ret) {
  dev_err(&pdev->dev, "audmux internal port setup failed\n");
  return ret;
 }
 ret = imx_audmux_v2_configure_port(ext_port,
   IMX_AUDMUX_V2_PTCR_SYN,
   IMX_AUDMUX_V2_PDCR_RXDSEL(int_port));
 if (ret) {
  dev_err(&pdev->dev, "audmux external port setup failed\n");
  return ret;
 }

 ssi_np = of_parse_phandle(pdev->dev.of_node, "ssi-controller", 0);
 codec_np = of_parse_phandle(pdev->dev.of_node, "audio-codec", 0);
 if (!ssi_np || !codec_np) {
  dev_err(&pdev->dev, "phandle missing or invalid\n");
  ret = -EINVAL;
  goto fail;
 }

 ssi_pdev = of_find_device_by_node(ssi_np);
 if (!ssi_pdev) {
  dev_dbg(&pdev->dev, "failed to find SSI platform device\n");
  ret = -EPROBE_DEFER;
  goto fail;
 }
 put_device(&ssi_pdev->dev);
 codec_dev = of_find_i2c_device_by_node(codec_np);
 if (!codec_dev) {
  dev_dbg(&pdev->dev, "failed to find codec platform device\n");
  ret = -EPROBE_DEFER;
  goto fail;
 }

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data) {
  ret = -ENOMEM;
  goto fail;
 }

 comp = devm_kzalloc(&pdev->dev, 3 * sizeof(*comp), GFP_KERNEL);
 if (!comp) {
  ret = -ENOMEM;
  goto fail;
 }

 data->codec_clk = clk_get(&codec_dev->dev, ((void*)0));
 if (IS_ERR(data->codec_clk)) {
  ret = PTR_ERR(data->codec_clk);
  goto fail;
 }

 data->clk_frequency = clk_get_rate(data->codec_clk);

 data->dai.cpus = &comp[0];
 data->dai.codecs = &comp[1];
 data->dai.platforms = &comp[2];

 data->dai.num_cpus = 1;
 data->dai.num_codecs = 1;
 data->dai.num_platforms = 1;

 data->dai.name = "HiFi";
 data->dai.stream_name = "HiFi";
 data->dai.codecs->dai_name = "sgtl5000";
 data->dai.codecs->of_node = codec_np;
 data->dai.cpus->of_node = ssi_np;
 data->dai.platforms->of_node = ssi_np;
 data->dai.init = &imx_sgtl5000_dai_init;
 data->dai.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
       SND_SOC_DAIFMT_CBM_CFM;

 data->card.dev = &pdev->dev;
 ret = snd_soc_of_parse_card_name(&data->card, "model");
 if (ret)
  goto fail;
 ret = snd_soc_of_parse_audio_routing(&data->card, "audio-routing");
 if (ret)
  goto fail;
 data->card.num_links = 1;
 data->card.owner = THIS_MODULE;
 data->card.dai_link = &data->dai;
 data->card.dapm_widgets = imx_sgtl5000_dapm_widgets;
 data->card.num_dapm_widgets = ARRAY_SIZE(imx_sgtl5000_dapm_widgets);

 platform_set_drvdata(pdev, &data->card);
 snd_soc_card_set_drvdata(&data->card, data);

 ret = devm_snd_soc_register_card(&pdev->dev, &data->card);
 if (ret) {
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "snd_soc_register_card failed (%d)\n",
    ret);
  goto fail;
 }

 of_node_put(ssi_np);
 of_node_put(codec_np);

 return 0;

fail:
 if (data && !IS_ERR(data->codec_clk))
  clk_put(data->codec_clk);
 of_node_put(ssi_np);
 of_node_put(codec_np);

 return ret;
}
