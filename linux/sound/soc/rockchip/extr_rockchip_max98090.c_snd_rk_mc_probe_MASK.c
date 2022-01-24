#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {TYPE_7__* dev; } ;
struct TYPE_15__ {struct device_node* of_node; } ;
struct platform_device {TYPE_7__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {void* of_node; } ;
struct TYPE_14__ {TYPE_4__ dlc; } ;
struct TYPE_13__ {TYPE_3__* cpus; TYPE_2__* platforms; TYPE_1__* codecs; } ;
struct TYPE_11__ {void* of_node; } ;
struct TYPE_10__ {void* of_node; } ;
struct TYPE_9__ {void* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,char*,...) ; 
 int FUNC1 (TYPE_7__*,struct snd_soc_card*) ; 
 void* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 TYPE_6__ rk_98090_headset_dev ; 
 TYPE_5__ rk_dailink ; 
 struct snd_soc_card snd_soc_card_rk ; 
 int FUNC3 (struct snd_soc_card*,char*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int ret = 0;
	struct snd_soc_card *card = &snd_soc_card_rk;
	struct device_node *np = pdev->dev.of_node;

	/* register the soc card */
	card->dev = &pdev->dev;

	rk_dailink.codecs->of_node = FUNC2(np,
			"rockchip,audio-codec", 0);
	if (!rk_dailink.codecs->of_node) {
		FUNC0(&pdev->dev,
			"Property 'rockchip,audio-codec' missing or invalid\n");
		return -EINVAL;
	}

	rk_dailink.cpus->of_node = FUNC2(np,
			"rockchip,i2s-controller", 0);
	if (!rk_dailink.cpus->of_node) {
		FUNC0(&pdev->dev,
			"Property 'rockchip,i2s-controller' missing or invalid\n");
		return -EINVAL;
	}

	rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;

	rk_98090_headset_dev.dlc.of_node = FUNC2(np,
			"rockchip,headset-codec", 0);
	if (!rk_98090_headset_dev.dlc.of_node) {
		FUNC0(&pdev->dev,
			"Property 'rockchip,headset-codec' missing/invalid\n");
		return -EINVAL;
	}

	ret = FUNC3(card, "rockchip,model");
	if (ret) {
		FUNC0(&pdev->dev,
			"Soc parse card name failed %d\n", ret);
		return ret;
	}

	ret = FUNC1(&pdev->dev, card);
	if (ret) {
		FUNC0(&pdev->dev,
			"Soc register card failed %d\n", ret);
		return ret;
	}

	return ret;
}