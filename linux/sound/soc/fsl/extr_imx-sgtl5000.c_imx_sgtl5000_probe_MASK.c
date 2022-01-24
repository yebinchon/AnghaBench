#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_link_component {char* dai_name; struct device_node* of_node; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_13__ {int num_links; int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; TYPE_1__* dai_link; int /*<<< orphan*/  owner; TYPE_5__* dev; } ;
struct TYPE_12__ {int num_cpus; int num_codecs; int num_platforms; char* name; char* stream_name; int dai_fmt; int /*<<< orphan*/ * init; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* cpus; struct snd_soc_dai_link_component* codecs; } ;
struct imx_sgtl5000_data {int /*<<< orphan*/  codec_clk; TYPE_2__ card; TYPE_1__ dai; int /*<<< orphan*/  clk_frequency; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IMX_AUDMUX_V2_PTCR_SYN ; 
 int IMX_AUDMUX_V2_PTCR_TCLKDIR ; 
 int FUNC2 (int) ; 
 int IMX_AUDMUX_V2_PTCR_TFSDIR ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int SND_SOC_DAIFMT_CBM_CFM ; 
 int SND_SOC_DAIFMT_I2S ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*,...) ; 
 void* FUNC11 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,TYPE_2__*) ; 
 int FUNC13 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_sgtl5000_dai_init ; 
 int /*<<< orphan*/  imx_sgtl5000_dapm_widgets ; 
 struct platform_device* FUNC14 (struct device_node*) ; 
 struct i2c_client* FUNC15 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct device_node*) ; 
 struct device_node* FUNC17 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,struct imx_sgtl5000_data*) ; 
 int FUNC22 (TYPE_2__*,char*) ; 
 int FUNC23 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device_node *ssi_np, *codec_np;
	struct platform_device *ssi_pdev;
	struct i2c_client *codec_dev;
	struct imx_sgtl5000_data *data = NULL;
	struct snd_soc_dai_link_component *comp;
	int int_port, ext_port;
	int ret;

	ret = FUNC18(np, "mux-int-port", &int_port);
	if (ret) {
		FUNC10(&pdev->dev, "mux-int-port missing or invalid\n");
		return ret;
	}
	ret = FUNC18(np, "mux-ext-port", &ext_port);
	if (ret) {
		FUNC10(&pdev->dev, "mux-ext-port missing or invalid\n");
		return ret;
	}

	/*
	 * The port numbering in the hardware manual starts at 1, while
	 * the audmux API expects it starts at 0.
	 */
	int_port--;
	ext_port--;
	ret = FUNC13(int_port,
			IMX_AUDMUX_V2_PTCR_SYN |
			FUNC3(ext_port) |
			FUNC2(ext_port) |
			IMX_AUDMUX_V2_PTCR_TFSDIR |
			IMX_AUDMUX_V2_PTCR_TCLKDIR,
			FUNC1(ext_port));
	if (ret) {
		FUNC10(&pdev->dev, "audmux internal port setup failed\n");
		return ret;
	}
	ret = FUNC13(ext_port,
			IMX_AUDMUX_V2_PTCR_SYN,
			FUNC1(int_port));
	if (ret) {
		FUNC10(&pdev->dev, "audmux external port setup failed\n");
		return ret;
	}

	ssi_np = FUNC17(pdev->dev.of_node, "ssi-controller", 0);
	codec_np = FUNC17(pdev->dev.of_node, "audio-codec", 0);
	if (!ssi_np || !codec_np) {
		FUNC10(&pdev->dev, "phandle missing or invalid\n");
		ret = -EINVAL;
		goto fail;
	}

	ssi_pdev = FUNC14(ssi_np);
	if (!ssi_pdev) {
		FUNC9(&pdev->dev, "failed to find SSI platform device\n");
		ret = -EPROBE_DEFER;
		goto fail;
	}
	FUNC20(&ssi_pdev->dev);
	codec_dev = FUNC15(codec_np);
	if (!codec_dev) {
		FUNC9(&pdev->dev, "failed to find codec platform device\n");
		ret = -EPROBE_DEFER;
		goto fail;
	}

	data = FUNC11(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data) {
		ret = -ENOMEM;
		goto fail;
	}

	comp = FUNC11(&pdev->dev, 3 * sizeof(*comp), GFP_KERNEL);
	if (!comp) {
		ret = -ENOMEM;
		goto fail;
	}

	data->codec_clk = FUNC6(&codec_dev->dev, NULL);
	if (FUNC4(data->codec_clk)) {
		ret = FUNC5(data->codec_clk);
		goto fail;
	}

	data->clk_frequency = FUNC7(data->codec_clk);

	data->dai.cpus		= &comp[0];
	data->dai.codecs	= &comp[1];
	data->dai.platforms	= &comp[2];

	data->dai.num_cpus	= 1;
	data->dai.num_codecs	= 1;
	data->dai.num_platforms	= 1;

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
	ret = FUNC23(&data->card, "model");
	if (ret)
		goto fail;
	ret = FUNC22(&data->card, "audio-routing");
	if (ret)
		goto fail;
	data->card.num_links = 1;
	data->card.owner = THIS_MODULE;
	data->card.dai_link = &data->dai;
	data->card.dapm_widgets = imx_sgtl5000_dapm_widgets;
	data->card.num_dapm_widgets = FUNC0(imx_sgtl5000_dapm_widgets);

	FUNC19(pdev, &data->card);
	FUNC21(&data->card, data);

	ret = FUNC12(&pdev->dev, &data->card);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC10(&pdev->dev, "snd_soc_register_card failed (%d)\n",
				ret);
		goto fail;
	}

	FUNC16(ssi_np);
	FUNC16(codec_np);

	return 0;

fail:
	if (data && !FUNC4(data->codec_clk))
		FUNC8(data->codec_clk);
	FUNC16(ssi_np);
	FUNC16(codec_np);

	return ret;
}