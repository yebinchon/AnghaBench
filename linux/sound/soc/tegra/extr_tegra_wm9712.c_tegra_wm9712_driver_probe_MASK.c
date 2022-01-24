#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tegra_wm9712 {int /*<<< orphan*/  codec; int /*<<< orphan*/  util_data; } ;
struct snd_soc_card {TYPE_4__* dev; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {TYPE_2__* cpus; TYPE_1__* platforms; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,...) ; 
 struct tegra_wm9712* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_card*,struct tegra_wm9712*) ; 
 int FUNC8 (struct snd_soc_card*,char*) ; 
 int FUNC9 (struct snd_soc_card*,char*) ; 
 int FUNC10 (struct snd_soc_card*) ; 
 struct snd_soc_card snd_soc_tegra_wm9712 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_3__ tegra_wm9712_dai ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct snd_soc_card *card = &snd_soc_tegra_wm9712;
	struct tegra_wm9712 *machine;
	int ret;

	machine = FUNC1(&pdev->dev, sizeof(struct tegra_wm9712),
			       GFP_KERNEL);
	if (!machine)
		return -ENOMEM;

	card->dev = &pdev->dev;
	FUNC7(card, machine);

	machine->codec = FUNC4("wm9712-codec", -1);
	if (!machine->codec) {
		FUNC0(&pdev->dev, "Can't allocate wm9712 platform device\n");
		return -ENOMEM;
	}

	ret = FUNC3(machine->codec);
	if (ret)
		goto codec_put;

	ret = FUNC9(card, "nvidia,model");
	if (ret)
		goto codec_unregister;

	ret = FUNC8(card, "nvidia,audio-routing");
	if (ret)
		goto codec_unregister;

	tegra_wm9712_dai.cpus->of_node = FUNC2(np,
				       "nvidia,ac97-controller", 0);
	if (!tegra_wm9712_dai.cpus->of_node) {
		FUNC0(&pdev->dev,
			"Property 'nvidia,ac97-controller' missing or invalid\n");
		ret = -EINVAL;
		goto codec_unregister;
	}

	tegra_wm9712_dai.platforms->of_node = tegra_wm9712_dai.cpus->of_node;

	ret = FUNC12(&machine->util_data, &pdev->dev);
	if (ret)
		goto codec_unregister;

	ret = FUNC13(&machine->util_data);
	if (ret)
		goto asoc_utils_fini;

	ret = FUNC10(card);
	if (ret) {
		FUNC0(&pdev->dev, "snd_soc_register_card failed (%d)\n",
			ret);
		goto asoc_utils_fini;
	}

	return 0;

asoc_utils_fini:
	FUNC11(&machine->util_data);
codec_unregister:
	FUNC5(machine->codec);
codec_put:
	FUNC6(machine->codec);
	return ret;
}