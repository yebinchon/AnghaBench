#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tegra_rt5677 {int gpio_hp_det; int gpio_mic_present; int gpio_hp_en; int gpio_dmic_clk_en; int /*<<< orphan*/  util_data; } ;
struct snd_soc_card {TYPE_5__* dev; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {TYPE_3__* codecs; TYPE_2__* platforms; TYPE_1__* cpus; } ;
struct TYPE_11__ {int /*<<< orphan*/ * of_node; } ;
struct TYPE_10__ {int /*<<< orphan*/ * of_node; } ;
struct TYPE_9__ {int /*<<< orphan*/ * of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 int FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ,char*) ; 
 struct tegra_rt5677* FUNC2 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_card*,struct tegra_rt5677*) ; 
 int FUNC8 (struct snd_soc_card*,char*) ; 
 int FUNC9 (struct snd_soc_card*,char*) ; 
 int FUNC10 (struct snd_soc_card*) ; 
 struct snd_soc_card snd_soc_tegra_rt5677 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__ tegra_rt5677_dai ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct snd_soc_card *card = &snd_soc_tegra_rt5677;
	struct tegra_rt5677 *machine;
	int ret;

	machine = FUNC2(&pdev->dev,
			sizeof(struct tegra_rt5677), GFP_KERNEL);
	if (!machine)
		return -ENOMEM;

	card->dev = &pdev->dev;
	FUNC7(card, machine);

	machine->gpio_hp_det = FUNC4(np, "nvidia,hp-det-gpios", 0);
	if (machine->gpio_hp_det == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	machine->gpio_mic_present = FUNC4(np,
			"nvidia,mic-present-gpios", 0);
	if (machine->gpio_mic_present == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	machine->gpio_hp_en = FUNC4(np, "nvidia,hp-en-gpios", 0);
	if (machine->gpio_hp_en == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC3(machine->gpio_hp_en)) {
		ret = FUNC1(&pdev->dev, machine->gpio_hp_en,
				GPIOF_OUT_INIT_LOW, "hp_en");
		if (ret) {
			FUNC0(card->dev, "cannot get hp_en gpio\n");
			return ret;
		}
	}

	machine->gpio_dmic_clk_en = FUNC4(np,
		"nvidia,dmic-clk-en-gpios", 0);
	if (machine->gpio_dmic_clk_en == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC3(machine->gpio_dmic_clk_en)) {
		ret = FUNC1(&pdev->dev,
				machine->gpio_dmic_clk_en,
				GPIOF_OUT_INIT_HIGH, "dmic_clk_en");
		if (ret) {
			FUNC0(card->dev, "cannot get dmic_clk_en gpio\n");
			return ret;
		}
	}

	ret = FUNC9(card, "nvidia,model");
	if (ret)
		goto err;

	ret = FUNC8(card, "nvidia,audio-routing");
	if (ret)
		goto err;

	tegra_rt5677_dai.codecs->of_node = FUNC6(np,
			"nvidia,audio-codec", 0);
	if (!tegra_rt5677_dai.codecs->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,audio-codec' missing or invalid\n");
		ret = -EINVAL;
		goto err;
	}

	tegra_rt5677_dai.cpus->of_node = FUNC6(np,
			"nvidia,i2s-controller", 0);
	if (!tegra_rt5677_dai.cpus->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,i2s-controller' missing or invalid\n");
		ret = -EINVAL;
		goto err_put_codec_of_node;
	}
	tegra_rt5677_dai.platforms->of_node = tegra_rt5677_dai.cpus->of_node;

	ret = FUNC12(&machine->util_data, &pdev->dev);
	if (ret)
		goto err_put_cpu_of_node;

	ret = FUNC10(card);
	if (ret) {
		FUNC0(&pdev->dev, "snd_soc_register_card failed (%d)\n",
			ret);
		goto err_fini_utils;
	}

	return 0;

err_fini_utils:
	FUNC11(&machine->util_data);
err_put_cpu_of_node:
	FUNC5(tegra_rt5677_dai.cpus->of_node);
	tegra_rt5677_dai.cpus->of_node = NULL;
	tegra_rt5677_dai.platforms->of_node = NULL;
err_put_codec_of_node:
	FUNC5(tegra_rt5677_dai.codecs->of_node);
	tegra_rt5677_dai.codecs->of_node = NULL;
err:
	return ret;
}