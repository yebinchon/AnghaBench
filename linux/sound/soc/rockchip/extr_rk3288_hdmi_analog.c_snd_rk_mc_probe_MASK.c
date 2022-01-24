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
struct snd_soc_card {TYPE_5__* dev; } ;
struct rk_drvdata {int gpio_hp_det; int gpio_hp_en; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {TYPE_3__* cpus; TYPE_2__* platforms; TYPE_1__* codecs; } ;
struct TYPE_11__ {void* of_node; } ;
struct TYPE_10__ {void* of_node; } ;
struct TYPE_9__ {int /*<<< orphan*/  dai_name; void* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 int FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ,char*) ; 
 struct rk_drvdata* FUNC2 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,struct snd_soc_card*) ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 TYPE_4__ rk_dailink ; 
 struct snd_soc_card snd_soc_card_rk ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_card*,struct rk_drvdata*) ; 
 int FUNC9 (struct of_phandle_args*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct snd_soc_card*,char*) ; 
 int FUNC11 (struct snd_soc_card*,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	int ret = 0;
	struct snd_soc_card *card = &snd_soc_card_rk;
	struct device_node *np = pdev->dev.of_node;
	struct rk_drvdata *machine;
	struct of_phandle_args args;

	machine = FUNC2(&pdev->dev, sizeof(struct rk_drvdata),
			       GFP_KERNEL);
	if (!machine)
		return -ENOMEM;

	card->dev = &pdev->dev;

	machine->gpio_hp_det = FUNC5(np,
		"rockchip,hp-det-gpios", 0);
	if (!FUNC4(machine->gpio_hp_det) && machine->gpio_hp_det != -ENODEV)
		return machine->gpio_hp_det;

	machine->gpio_hp_en = FUNC5(np,
		"rockchip,hp-en-gpios", 0);
	if (!FUNC4(machine->gpio_hp_en) && machine->gpio_hp_en != -ENODEV)
		return machine->gpio_hp_en;

	if (FUNC4(machine->gpio_hp_en)) {
		ret = FUNC1(&pdev->dev, machine->gpio_hp_en,
					    GPIOF_OUT_INIT_LOW, "hp_en");
		if (ret) {
			FUNC0(card->dev, "cannot get hp_en gpio\n");
			return ret;
		}
	}

	ret = FUNC11(card, "rockchip,model");
	if (ret) {
		FUNC0(card->dev, "SoC parse card name failed %d\n", ret);
		return ret;
	}

	rk_dailink.codecs[0].of_node = FUNC6(np,
							"rockchip,audio-codec",
							0);
	if (!rk_dailink.codecs[0].of_node) {
		FUNC0(&pdev->dev,
			"Property 'rockchip,audio-codec' missing or invalid\n");
		return -EINVAL;
	}
	ret = FUNC7(np, "rockchip,audio-codec",
					       0, 0, &args);
	if (ret) {
		FUNC0(&pdev->dev,
			"Unable to parse property 'rockchip,audio-codec'\n");
		return ret;
	}

	ret = FUNC9(&args, &rk_dailink.codecs[0].dai_name);
	if (ret) {
		FUNC0(&pdev->dev, "Unable to get codec_dai_name\n");
		return ret;
	}

	rk_dailink.cpus->of_node = FUNC6(np, "rockchip,i2s-controller",
						  0);
	if (!rk_dailink.cpus->of_node) {
		FUNC0(&pdev->dev,
			"Property 'rockchip,i2s-controller' missing or invalid\n");
		return -EINVAL;
	}

	rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;

	ret = FUNC10(card, "rockchip,routing");
	if (ret) {
		FUNC0(&pdev->dev,
			"Unable to parse 'rockchip,routing' property\n");
		return ret;
	}

	FUNC8(card, machine);

	ret = FUNC3(&pdev->dev, card);
	if (ret == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (ret) {
		FUNC0(&pdev->dev,
			"Soc register card failed %d\n", ret);
		return ret;
	}

	return ret;
}