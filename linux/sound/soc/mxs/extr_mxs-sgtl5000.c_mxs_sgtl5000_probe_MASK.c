#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; TYPE_5__* dev; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {TYPE_3__* platforms; TYPE_2__* cpus; TYPE_1__* codecs; } ;
struct TYPE_9__ {struct device_node* of_node; int /*<<< orphan*/ * name; } ;
struct TYPE_8__ {struct device_node* of_node; int /*<<< orphan*/ * dai_name; } ;
struct TYPE_7__ {struct device_node* of_node; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,...) ; 
 int FUNC2 (TYPE_5__*,struct snd_soc_card*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_card mxs_sgtl5000 ; 
 TYPE_4__* mxs_sgtl5000_dai ; 
 int /*<<< orphan*/  mxs_sgtl5000_dapm_widgets ; 
 scalar_t__ FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct device_node*,char*,int) ; 
 int FUNC7 (struct snd_soc_card*,char*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct snd_soc_card *card = &mxs_sgtl5000;
	int ret, i;
	struct device_node *np = pdev->dev.of_node;
	struct device_node *saif_np[2], *codec_np;

	saif_np[0] = FUNC6(np, "saif-controllers", 0);
	saif_np[1] = FUNC6(np, "saif-controllers", 1);
	codec_np = FUNC6(np, "audio-codec", 0);
	if (!saif_np[0] || !saif_np[1] || !codec_np) {
		FUNC1(&pdev->dev, "phandle missing or invalid\n");
		return -EINVAL;
	}

	for (i = 0; i < 2; i++) {
		mxs_sgtl5000_dai[i].codecs->name = NULL;
		mxs_sgtl5000_dai[i].codecs->of_node = codec_np;
		mxs_sgtl5000_dai[i].cpus->dai_name = NULL;
		mxs_sgtl5000_dai[i].cpus->of_node = saif_np[i];
		mxs_sgtl5000_dai[i].platforms->name = NULL;
		mxs_sgtl5000_dai[i].platforms->of_node = saif_np[i];
	}

	FUNC5(codec_np);
	FUNC5(saif_np[0]);
	FUNC5(saif_np[1]);

	/*
	 * Set an init clock(11.28Mhz) for sgtl5000 initialization(i2c r/w).
	 * The Sgtl5000 sysclk is derived from saif0 mclk and it's range
	 * should be >= 8MHz and <= 27M.
	 */
	ret = FUNC3(0, 44100 * 256, 44100);
	if (ret) {
		FUNC1(&pdev->dev, "failed to get mclk\n");
		return ret;
	}

	card->dev = &pdev->dev;

	if (FUNC4(np, "audio-routing", NULL)) {
		card->dapm_widgets = mxs_sgtl5000_dapm_widgets;
		card->num_dapm_widgets = FUNC0(mxs_sgtl5000_dapm_widgets);

		ret = FUNC7(card, "audio-routing");
		if (ret) {
			FUNC1(&pdev->dev, "failed to parse audio-routing (%d)\n",
				ret);
			return ret;
		}
	}

	ret = FUNC2(&pdev->dev, card);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC1(&pdev->dev, "snd_soc_register_card failed (%d)\n",
				ret);
		return ret;
	}

	return 0;
}