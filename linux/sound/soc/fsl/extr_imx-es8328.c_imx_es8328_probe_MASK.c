#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct snd_soc_dai_link_component {char* dai_name; struct device_node* of_node; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int num_links; TYPE_1__* dai_link; int /*<<< orphan*/  owner; int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; struct device* dev; } ;
struct TYPE_5__ {int num_cpus; int num_codecs; int num_platforms; char* name; char* stream_name; int dai_fmt; int /*<<< orphan*/ * init; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* cpus; struct snd_soc_dai_link_component* codecs; } ;
struct imx_es8328_data {TYPE_2__ card; TYPE_1__ dai; int /*<<< orphan*/  jack_gpio; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int IMX_AUDMUX_V2_PTCR_SYN ; 
 int IMX_AUDMUX_V2_PTCR_TCLKDIR ; 
 int FUNC2 (scalar_t__) ; 
 int IMX_AUDMUX_V2_PTCR_TFSDIR ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ MUX_PORT_MAX ; 
 int SND_SOC_DAIFMT_CBM_CFM ; 
 int SND_SOC_DAIFMT_I2S ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 void* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_es8328_dai_init ; 
 int /*<<< orphan*/  imx_es8328_dapm_widgets ; 
 struct platform_device* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct imx_es8328_data*) ; 
 int FUNC13 (TYPE_2__*,char*) ; 
 int FUNC14 (TYPE_2__*,char*) ; 
 int FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device_node *ssi_np = NULL, *codec_np = NULL;
	struct platform_device *ssi_pdev;
	struct imx_es8328_data *data;
	struct snd_soc_dai_link_component *comp;
	u32 int_port, ext_port;
	int ret;
	struct device *dev = &pdev->dev;

	ret = FUNC11(np, "mux-int-port", &int_port);
	if (ret) {
		FUNC4(dev, "mux-int-port missing or invalid\n");
		goto fail;
	}
	if (int_port > MUX_PORT_MAX || int_port == 0) {
		FUNC4(dev, "mux-int-port: hardware only has %d mux ports\n",
			MUX_PORT_MAX);
		goto fail;
	}

	ret = FUNC11(np, "mux-ext-port", &ext_port);
	if (ret) {
		FUNC4(dev, "mux-ext-port missing or invalid\n");
		goto fail;
	}
	if (ext_port > MUX_PORT_MAX || ext_port == 0) {
		FUNC4(dev, "mux-ext-port: hardware only has %d mux ports\n",
			MUX_PORT_MAX);
		ret = -EINVAL;
		goto fail;
	}

	/*
	 * The port numbering in the hardware manual starts at 1, while
	 * the audmux API expects it starts at 0.
	 */
	int_port--;
	ext_port--;
	ret = FUNC6(int_port,
			IMX_AUDMUX_V2_PTCR_SYN |
			FUNC3(ext_port) |
			FUNC2(ext_port) |
			IMX_AUDMUX_V2_PTCR_TFSDIR |
			IMX_AUDMUX_V2_PTCR_TCLKDIR,
			FUNC1(ext_port));
	if (ret) {
		FUNC4(dev, "audmux internal port setup failed\n");
		return ret;
	}
	ret = FUNC6(ext_port,
			IMX_AUDMUX_V2_PTCR_SYN,
			FUNC1(int_port));
	if (ret) {
		FUNC4(dev, "audmux external port setup failed\n");
		return ret;
	}

	ssi_np = FUNC10(pdev->dev.of_node, "ssi-controller", 0);
	codec_np = FUNC10(pdev->dev.of_node, "audio-codec", 0);
	if (!ssi_np || !codec_np) {
		FUNC4(dev, "phandle missing or invalid\n");
		ret = -EINVAL;
		goto fail;
	}

	ssi_pdev = FUNC7(ssi_np);
	if (!ssi_pdev) {
		FUNC4(dev, "failed to find SSI platform device\n");
		ret = -EINVAL;
		goto fail;
	}

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data) {
		ret = -ENOMEM;
		goto fail;
	}

	comp = FUNC5(dev, 3 * sizeof(*comp), GFP_KERNEL);
	if (!comp) {
		ret = -ENOMEM;
		goto fail;
	}

	data->dev = dev;

	data->jack_gpio = FUNC8(pdev->dev.of_node, "jack-gpio", 0);

	data->dai.cpus		= &comp[0];
	data->dai.codecs	= &comp[1];
	data->dai.platforms	= &comp[2];

	data->dai.num_cpus	= 1;
	data->dai.num_codecs	= 1;
	data->dai.num_platforms	= 1;

	data->dai.name = "hifi";
	data->dai.stream_name = "hifi";
	data->dai.codecs->dai_name = "es8328-hifi-analog";
	data->dai.codecs->of_node = codec_np;
	data->dai.cpus->of_node = ssi_np;
	data->dai.platforms->of_node = ssi_np;
	data->dai.init = &imx_es8328_dai_init;
	data->dai.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
			    SND_SOC_DAIFMT_CBM_CFM;

	data->card.dev = dev;
	data->card.dapm_widgets = imx_es8328_dapm_widgets;
	data->card.num_dapm_widgets = FUNC0(imx_es8328_dapm_widgets);
	ret = FUNC14(&data->card, "model");
	if (ret) {
		FUNC4(dev, "Unable to parse card name\n");
		goto fail;
	}
	ret = FUNC13(&data->card, "audio-routing");
	if (ret) {
		FUNC4(dev, "Unable to parse routing: %d\n", ret);
		goto fail;
	}
	data->card.num_links = 1;
	data->card.owner = THIS_MODULE;
	data->card.dai_link = &data->dai;

	ret = FUNC15(&data->card);
	if (ret) {
		FUNC4(dev, "Unable to register: %d\n", ret);
		goto fail;
	}

	FUNC12(pdev, data);
fail:
	FUNC9(ssi_np);
	FUNC9(codec_np);

	return ret;
}