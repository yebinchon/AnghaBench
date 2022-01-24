#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {TYPE_4__* dev; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {TYPE_3__* codecs; TYPE_2__* cpus; TYPE_1__* platforms; } ;
struct TYPE_10__ {void* of_node; int /*<<< orphan*/ * name; } ;
struct TYPE_9__ {void* of_node; int /*<<< orphan*/  dai_name; } ;
struct TYPE_8__ {void* of_node; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_card*) ; 
 struct snd_soc_card arndale_rt5631 ; 
 TYPE_6__* arndale_rt5631_dai ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int FUNC3 (TYPE_4__*,struct snd_soc_card*) ; 
 void* FUNC4 (struct device_node*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int n, ret;
	struct device_node *np = pdev->dev.of_node;
	struct snd_soc_card *card = &arndale_rt5631;

	card->dev = &pdev->dev;

	for (n = 0; np && n < FUNC0(arndale_rt5631_dai); n++) {
		if (!arndale_rt5631_dai[n].cpus->dai_name) {
			arndale_rt5631_dai[n].cpus->of_node = FUNC4(np,
					"samsung,audio-cpu", n);

			if (!arndale_rt5631_dai[n].cpus->of_node) {
				FUNC2(&pdev->dev,
				"Property 'samsung,audio-cpu' missing or invalid\n");
				return -EINVAL;
			}
		}
		if (!arndale_rt5631_dai[n].platforms->name)
			arndale_rt5631_dai[n].platforms->of_node =
					arndale_rt5631_dai[n].cpus->of_node;

		arndale_rt5631_dai[n].codecs->name = NULL;
		arndale_rt5631_dai[n].codecs->of_node = FUNC4(np,
					"samsung,audio-codec", n);
		if (!arndale_rt5631_dai[0].codecs->of_node) {
			FUNC2(&pdev->dev,
			"Property 'samsung,audio-codec' missing or invalid\n");
			ret = -EINVAL;
			goto err_put_of_nodes;
		}
	}

	ret = FUNC3(card->dev, card);
	if (ret) {
		FUNC2(&pdev->dev, "snd_soc_register_card() failed: %d\n", ret);
		goto err_put_of_nodes;
	}
	return 0;

err_put_of_nodes:
	FUNC1(card);
	return ret;
}