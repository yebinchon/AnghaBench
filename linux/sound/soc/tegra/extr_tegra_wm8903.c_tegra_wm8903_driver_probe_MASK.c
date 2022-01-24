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
struct tegra_wm8903 {int gpio_spkr_en; int gpio_hp_mute; int gpio_hp_det; int gpio_int_mic_en; int gpio_ext_mic_en; int /*<<< orphan*/  util_data; } ;
struct snd_soc_card {TYPE_5__* dev; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {TYPE_3__* cpus; TYPE_2__* platforms; TYPE_1__* codecs; } ;
struct TYPE_11__ {void* of_node; } ;
struct TYPE_10__ {void* of_node; } ;
struct TYPE_9__ {void* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 int FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ,char*) ; 
 struct tegra_wm8903* FUNC2 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_card*,struct tegra_wm8903*) ; 
 int FUNC7 (struct snd_soc_card*,char*) ; 
 int FUNC8 (struct snd_soc_card*,char*) ; 
 int FUNC9 (struct snd_soc_card*) ; 
 struct snd_soc_card snd_soc_tegra_wm8903 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__ tegra_wm8903_dai ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct snd_soc_card *card = &snd_soc_tegra_wm8903;
	struct tegra_wm8903 *machine;
	int ret;

	machine = FUNC2(&pdev->dev, sizeof(struct tegra_wm8903),
			       GFP_KERNEL);
	if (!machine)
		return -ENOMEM;

	card->dev = &pdev->dev;
	FUNC6(card, machine);

	machine->gpio_spkr_en = FUNC4(np, "nvidia,spkr-en-gpios",
						  0);
	if (machine->gpio_spkr_en == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC3(machine->gpio_spkr_en)) {
		ret = FUNC1(&pdev->dev, machine->gpio_spkr_en,
					    GPIOF_OUT_INIT_LOW, "spkr_en");
		if (ret) {
			FUNC0(card->dev, "cannot get spkr_en gpio\n");
			return ret;
		}
	}

	machine->gpio_hp_mute = FUNC4(np, "nvidia,hp-mute-gpios",
						  0);
	if (machine->gpio_hp_mute == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC3(machine->gpio_hp_mute)) {
		ret = FUNC1(&pdev->dev, machine->gpio_hp_mute,
					    GPIOF_OUT_INIT_HIGH, "hp_mute");
		if (ret) {
			FUNC0(card->dev, "cannot get hp_mute gpio\n");
			return ret;
		}
	}

	machine->gpio_hp_det = FUNC4(np, "nvidia,hp-det-gpios", 0);
	if (machine->gpio_hp_det == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	machine->gpio_int_mic_en = FUNC4(np,
						"nvidia,int-mic-en-gpios", 0);
	if (machine->gpio_int_mic_en == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC3(machine->gpio_int_mic_en)) {
		/* Disable int mic; enable signal is active-high */
		ret = FUNC1(&pdev->dev,
					    machine->gpio_int_mic_en,
					    GPIOF_OUT_INIT_LOW, "int_mic_en");
		if (ret) {
			FUNC0(card->dev, "cannot get int_mic_en gpio\n");
			return ret;
		}
	}

	machine->gpio_ext_mic_en = FUNC4(np,
						"nvidia,ext-mic-en-gpios", 0);
	if (machine->gpio_ext_mic_en == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC3(machine->gpio_ext_mic_en)) {
		/* Enable ext mic; enable signal is active-low */
		ret = FUNC1(&pdev->dev,
					    machine->gpio_ext_mic_en,
					    GPIOF_OUT_INIT_LOW, "ext_mic_en");
		if (ret) {
			FUNC0(card->dev, "cannot get ext_mic_en gpio\n");
			return ret;
		}
	}

	ret = FUNC8(card, "nvidia,model");
	if (ret)
		goto err;

	ret = FUNC7(card, "nvidia,audio-routing");
	if (ret)
		goto err;

	tegra_wm8903_dai.codecs->of_node = FUNC5(np,
						"nvidia,audio-codec", 0);
	if (!tegra_wm8903_dai.codecs->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,audio-codec' missing or invalid\n");
		ret = -EINVAL;
		goto err;
	}

	tegra_wm8903_dai.cpus->of_node = FUNC5(np,
			"nvidia,i2s-controller", 0);
	if (!tegra_wm8903_dai.cpus->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,i2s-controller' missing or invalid\n");
		ret = -EINVAL;
		goto err;
	}

	tegra_wm8903_dai.platforms->of_node = tegra_wm8903_dai.cpus->of_node;

	ret = FUNC11(&machine->util_data, &pdev->dev);
	if (ret)
		goto err;

	ret = FUNC9(card);
	if (ret) {
		FUNC0(&pdev->dev, "snd_soc_register_card failed (%d)\n",
			ret);
		goto err_fini_utils;
	}

	return 0;

err_fini_utils:
	FUNC10(&machine->util_data);
err:
	return ret;
}