#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tegra_trimslice {int /*<<< orphan*/  util_data; } ;
struct snd_soc_card {TYPE_5__* dev; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {TYPE_3__* cpus; TYPE_2__* platforms; TYPE_1__* codecs; } ;
struct TYPE_10__ {void* of_node; } ;
struct TYPE_9__ {void* of_node; } ;
struct TYPE_8__ {void* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 struct tegra_trimslice* FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*,struct tegra_trimslice*) ; 
 int FUNC4 (struct snd_soc_card*) ; 
 struct snd_soc_card snd_soc_trimslice ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__ trimslice_tlv320aic23_dai ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct snd_soc_card *card = &snd_soc_trimslice;
	struct tegra_trimslice *trimslice;
	int ret;

	trimslice = FUNC1(&pdev->dev, sizeof(struct tegra_trimslice),
				 GFP_KERNEL);
	if (!trimslice)
		return -ENOMEM;

	card->dev = &pdev->dev;
	FUNC3(card, trimslice);

	trimslice_tlv320aic23_dai.codecs->of_node = FUNC2(np,
			"nvidia,audio-codec", 0);
	if (!trimslice_tlv320aic23_dai.codecs->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,audio-codec' missing or invalid\n");
		ret = -EINVAL;
		goto err;
	}

	trimslice_tlv320aic23_dai.cpus->of_node = FUNC2(np,
			"nvidia,i2s-controller", 0);
	if (!trimslice_tlv320aic23_dai.cpus->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,i2s-controller' missing or invalid\n");
		ret = -EINVAL;
		goto err;
	}

	trimslice_tlv320aic23_dai.platforms->of_node =
			trimslice_tlv320aic23_dai.cpus->of_node;

	ret = FUNC6(&trimslice->util_data, &pdev->dev);
	if (ret)
		goto err;

	ret = FUNC4(card);
	if (ret) {
		FUNC0(&pdev->dev, "snd_soc_register_card failed (%d)\n",
			ret);
		goto err_fini_utils;
	}

	return 0;

err_fini_utils:
	FUNC5(&trimslice->util_data);
err:
	return ret;
}