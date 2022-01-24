#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_link_component {char* dai_name; struct device_node* of_node; } ;
struct snd_soc_dai_link {int num_cpus; int num_codecs; int num_platforms; char* name; char* stream_name; unsigned int dai_fmt; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* cpus; struct snd_soc_dai_link_component* codecs; int /*<<< orphan*/ * init; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int num_links; struct snd_soc_dai_link* dai_link; TYPE_4__* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SND_SOC_DAIFMT_CBM_CFM ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,...) ; 
 void* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ snd_proto ; 
 int /*<<< orphan*/  snd_proto_init ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 unsigned int FUNC5 (struct device_node*,int /*<<< orphan*/ *,struct device_node**,struct device_node**) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct snd_soc_dai_link *dai;
	struct snd_soc_dai_link_component *comp;
	struct device_node *np = pdev->dev.of_node;
	struct device_node *codec_np, *cpu_np;
	struct device_node *bitclkmaster = NULL;
	struct device_node *framemaster = NULL;
	unsigned int dai_fmt;
	int ret = 0;

	if (!np) {
		FUNC0(&pdev->dev, "No device node supplied\n");
		return -EINVAL;
	}

	snd_proto.dev = &pdev->dev;
	ret = FUNC4(&snd_proto, "model");
	if (ret)
		return ret;

	dai = FUNC1(&pdev->dev, sizeof(*dai), GFP_KERNEL);
	if (!dai)
		return -ENOMEM;

	/* for cpus/codecs/platforms */
	comp = FUNC1(&pdev->dev, 3 * sizeof(*comp), GFP_KERNEL);
	if (!comp)
		return -ENOMEM;

	snd_proto.dai_link = dai;
	snd_proto.num_links = 1;

	dai->cpus = &comp[0];
	dai->num_cpus = 1;
	dai->codecs = &comp[1];
	dai->num_codecs = 1;
	dai->platforms = &comp[2];
	dai->num_platforms = 1;

	dai->name = "WM8731";
	dai->stream_name = "WM8731 HiFi";
	dai->codecs->dai_name = "wm8731-hifi";
	dai->init = &snd_proto_init;

	codec_np = FUNC3(np, "audio-codec", 0);
	if (!codec_np) {
		FUNC0(&pdev->dev, "audio-codec node missing\n");
		return -EINVAL;
	}
	dai->codecs->of_node = codec_np;

	cpu_np = FUNC3(np, "i2s-controller", 0);
	if (!cpu_np) {
		FUNC0(&pdev->dev, "i2s-controller missing\n");
		return -EINVAL;
	}
	dai->cpus->of_node = cpu_np;
	dai->platforms->of_node = cpu_np;

	dai_fmt = FUNC5(np, NULL,
					  &bitclkmaster, &framemaster);
	if (bitclkmaster != framemaster) {
		FUNC0(&pdev->dev, "Must be the same bitclock and frame master\n");
		return -EINVAL;
	}
	if (bitclkmaster) {
		dai_fmt &= ~SND_SOC_DAIFMT_MASTER_MASK;
		if (codec_np == bitclkmaster)
			dai_fmt |= SND_SOC_DAIFMT_CBM_CFM;
		else
			dai_fmt |= SND_SOC_DAIFMT_CBS_CFS;
	}
	FUNC2(bitclkmaster);
	FUNC2(framemaster);
	dai->dai_fmt = dai_fmt;

	FUNC2(codec_np);
	FUNC2(cpu_np);

	ret = FUNC6(&snd_proto);
	if (ret && ret != -EPROBE_DEFER)
		FUNC0(&pdev->dev,
			"snd_soc_register_card() failed: %d\n", ret);

	return ret;
}