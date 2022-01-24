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
struct tegra_sgtl5000 {int /*<<< orphan*/  util_data; } ;
struct snd_soc_card {TYPE_5__* dev; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {TYPE_3__* codecs; TYPE_2__* platforms; TYPE_1__* cpus; } ;
struct TYPE_10__ {int /*<<< orphan*/ * of_node; } ;
struct TYPE_9__ {int /*<<< orphan*/ * of_node; } ;
struct TYPE_8__ {int /*<<< orphan*/ * of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 struct tegra_sgtl5000* FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_card*,struct tegra_sgtl5000*) ; 
 int FUNC5 (struct snd_soc_card*,char*) ; 
 int FUNC6 (struct snd_soc_card*,char*) ; 
 int FUNC7 (struct snd_soc_card*) ; 
 struct snd_soc_card snd_soc_tegra_sgtl5000 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__ tegra_sgtl5000_dai ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct snd_soc_card *card = &snd_soc_tegra_sgtl5000;
	struct tegra_sgtl5000 *machine;
	int ret;

	machine = FUNC1(&pdev->dev, sizeof(struct tegra_sgtl5000),
			       GFP_KERNEL);
	if (!machine)
		return -ENOMEM;

	card->dev = &pdev->dev;
	FUNC4(card, machine);

	ret = FUNC6(card, "nvidia,model");
	if (ret)
		goto err;

	ret = FUNC5(card, "nvidia,audio-routing");
	if (ret)
		goto err;

	tegra_sgtl5000_dai.codecs->of_node = FUNC3(np,
			"nvidia,audio-codec", 0);
	if (!tegra_sgtl5000_dai.codecs->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,audio-codec' missing or invalid\n");
		ret = -EINVAL;
		goto err;
	}

	tegra_sgtl5000_dai.cpus->of_node = FUNC3(np,
			"nvidia,i2s-controller", 0);
	if (!tegra_sgtl5000_dai.cpus->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,i2s-controller' missing/invalid\n");
		ret = -EINVAL;
		goto err_put_codec_of_node;
	}

	tegra_sgtl5000_dai.platforms->of_node = tegra_sgtl5000_dai.cpus->of_node;

	ret = FUNC9(&machine->util_data, &pdev->dev);
	if (ret)
		goto err_put_cpu_of_node;

	ret = FUNC7(card);
	if (ret) {
		FUNC0(&pdev->dev, "snd_soc_register_card failed (%d)\n",
			ret);
		goto err_fini_utils;
	}

	return 0;

err_fini_utils:
	FUNC8(&machine->util_data);
err_put_cpu_of_node:
	FUNC2(tegra_sgtl5000_dai.cpus->of_node);
	tegra_sgtl5000_dai.cpus->of_node = NULL;
	tegra_sgtl5000_dai.platforms->of_node = NULL;
err_put_codec_of_node:
	FUNC2(tegra_sgtl5000_dai.codecs->of_node);
	tegra_sgtl5000_dai.codecs->of_node = NULL;
err:
	return ret;
}