#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_link {TYPE_1__* cpus; } ;
struct snd_soc_card {int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;

/* Variables and functions */
 struct snd_soc_card atmel_asoc_wm8904_card ; 
 struct snd_soc_dai_link atmel_asoc_wm8904_dailink ; 
 int FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (struct device_node*,char*) ; 
 int FUNC5 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct snd_soc_card *card = &atmel_asoc_wm8904_card;
	struct snd_soc_dai_link *dailink = &atmel_asoc_wm8904_dailink;
	int id, ret;

	card->dev = &pdev->dev;
	ret = FUNC0(pdev);
	if (ret) {
		FUNC3(&pdev->dev, "failed to init dt info\n");
		return ret;
	}

	id = FUNC4((struct device_node *)dailink->cpus->of_node, "ssc");
	ret = FUNC2(id);
	if (ret != 0) {
		FUNC3(&pdev->dev, "failed to set SSC %d for audio\n", id);
		return ret;
	}

	ret = FUNC5(card);
	if (ret) {
		FUNC3(&pdev->dev, "snd_soc_register_card failed\n");
		goto err_set_audio;
	}

	return 0;

err_set_audio:
	FUNC1(id);
	return ret;
}