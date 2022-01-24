#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_dai_link_component {char* dai_name; int /*<<< orphan*/  name; struct device_node* of_node; } ;
struct snd_soc_dai_link {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; struct device* parent; } ;
struct platform_device {TYPE_5__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int num_links; TYPE_2__* dai_link; TYPE_5__* dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; int /*<<< orphan*/  remove; int /*<<< orphan*/  probe; } ;
struct machine_data {int dai_format; TYPE_1__ card; TYPE_2__* dai; int /*<<< orphan*/ * dma_id; int /*<<< orphan*/ * dma_channel_id; int /*<<< orphan*/ * platform_name; int /*<<< orphan*/  clk_frequency; int /*<<< orphan*/  cpu_clk_direction; int /*<<< orphan*/  codec_clk_direction; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int num_cpus; int num_codecs; int num_platforms; char* stream_name; char* name; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* codecs; int /*<<< orphan*/ * ops; struct snd_soc_dai_link_component* cpus; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 int SND_SOC_DAIFMT_CBM_CFM ; 
 int SND_SOC_DAIFMT_I2S ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,...) ; 
 char* FUNC2 (TYPE_5__*) ; 
 struct snd_soc_dai_link_component* FUNC3 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct machine_data*) ; 
 struct machine_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p1022_rdk_machine_probe ; 
 int /*<<< orphan*/  p1022_rdk_machine_remove ; 
 int /*<<< orphan*/  p1022_rdk_ops ; 
 int FUNC11 (TYPE_1__*) ; 
 struct platform_device* FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = pdev->dev.parent;
	/* ssi_pdev is the platform device for the SSI node that probed us */
	struct platform_device *ssi_pdev = FUNC12(dev);
	struct device_node *np = ssi_pdev->dev.of_node;
	struct device_node *codec_np = NULL;
	struct machine_data *mdata;
	struct snd_soc_dai_link_component *comp;
	const u32 *iprop;
	int ret;

	/* Find the codec node for this SSI. */
	codec_np = FUNC10(np, "codec-handle", 0);
	if (!codec_np) {
		FUNC1(dev, "could not find codec node\n");
		return -EINVAL;
	}

	mdata = FUNC6(sizeof(struct machine_data), GFP_KERNEL);
	if (!mdata) {
		ret = -ENOMEM;
		goto error_put;
	}

	comp = FUNC3(&pdev->dev, 6 * sizeof(*comp), GFP_KERNEL);
	if (!comp) {
		ret = -ENOMEM;
		goto error_put;
	}

	mdata->dai[0].cpus	= &comp[0];
	mdata->dai[0].codecs	= &comp[1];
	mdata->dai[0].platforms	= &comp[2];

	mdata->dai[0].num_cpus		= 1;
	mdata->dai[0].num_codecs	= 1;
	mdata->dai[0].num_platforms	= 1;

	mdata->dai[1].cpus	= &comp[3];
	mdata->dai[1].codecs	= &comp[4];
	mdata->dai[1].platforms	= &comp[5];

	mdata->dai[1].num_cpus		= 1;
	mdata->dai[1].num_codecs	= 1;
	mdata->dai[1].num_platforms	= 1;

	mdata->dai[0].cpus->dai_name = FUNC2(&ssi_pdev->dev);
	mdata->dai[0].ops = &p1022_rdk_ops;

	/* ASoC core can match codec with device node */
	mdata->dai[0].codecs->of_node = codec_np;

	/*
	 * We register two DAIs per SSI, one for playback and the other for
	 * capture.  We support codecs that have separate DAIs for both playback
	 * and capture.
	 */
	FUNC7(&mdata->dai[1], &mdata->dai[0], sizeof(struct snd_soc_dai_link));

	/* The DAI names from the codec (snd_soc_dai_driver.name) */
	mdata->dai[0].codecs->dai_name = "wm8960-hifi";
	mdata->dai[1].codecs->dai_name = mdata->dai[0].codecs->dai_name;

	/*
	 * Configure the SSI for I2S slave mode.  Older device trees have
	 * an fsl,mode property, but we ignore that since there's really
	 * only one way to configure the SSI.
	 */
	mdata->dai_format = SND_SOC_DAIFMT_NB_NF |
		SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_CBM_CFM;
	mdata->codec_clk_direction = SND_SOC_CLOCK_OUT;
	mdata->cpu_clk_direction = SND_SOC_CLOCK_IN;

	/*
	 * In i2s-slave mode, the codec has its own clock source, so we
	 * need to get the frequency from the device tree and pass it to
	 * the codec driver.
	 */
	iprop = FUNC8(codec_np, "clock-frequency", NULL);
	if (!iprop || !*iprop) {
		FUNC1(&pdev->dev, "codec bus-frequency property is missing or invalid\n");
		ret = -EINVAL;
		goto error;
	}
	mdata->clk_frequency = FUNC0(iprop);

	if (!mdata->clk_frequency) {
		FUNC1(&pdev->dev, "unknown clock frequency\n");
		ret = -EINVAL;
		goto error;
	}

	/* Find the playback DMA channel to use. */
	mdata->dai[0].platforms->name = mdata->platform_name[0];
	ret = FUNC4(np, "fsl,playback-dma", &mdata->dai[0],
				       &mdata->dma_channel_id[0],
				       &mdata->dma_id[0]);
	if (ret) {
		FUNC1(&pdev->dev, "missing/invalid playback DMA phandle (ret=%i)\n",
			ret);
		goto error;
	}

	/* Find the capture DMA channel to use. */
	mdata->dai[1].platforms->name = mdata->platform_name[1];
	ret = FUNC4(np, "fsl,capture-dma", &mdata->dai[1],
				       &mdata->dma_channel_id[1],
				       &mdata->dma_id[1]);
	if (ret) {
		FUNC1(&pdev->dev, "missing/invalid capture DMA phandle (ret=%i)\n",
			ret);
		goto error;
	}

	/* Initialize our DAI data structure.  */
	mdata->dai[0].stream_name = "playback";
	mdata->dai[1].stream_name = "capture";
	mdata->dai[0].name = mdata->dai[0].stream_name;
	mdata->dai[1].name = mdata->dai[1].stream_name;

	mdata->card.probe = p1022_rdk_machine_probe;
	mdata->card.remove = p1022_rdk_machine_remove;
	mdata->card.name = pdev->name; /* The platform driver name */
	mdata->card.owner = THIS_MODULE;
	mdata->card.dev = &pdev->dev;
	mdata->card.num_links = 2;
	mdata->card.dai_link = mdata->dai;

	/* Register with ASoC */
	ret = FUNC11(&mdata->card);
	if (ret) {
		FUNC1(&pdev->dev, "could not register card (ret=%i)\n", ret);
		goto error;
	}

	return 0;

error:
	FUNC5(mdata);
error_put:
	FUNC9(codec_np);
	return ret;
}