#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {TYPE_4__* dev; } ;
struct smdk_wm8994_data {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {TYPE_2__* cpus; TYPE_1__* platforms; } ;
struct TYPE_9__ {scalar_t__ of_node; int /*<<< orphan*/ * dai_name; } ;
struct TYPE_8__ {scalar_t__ of_node; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,...) ; 
 struct smdk_wm8994_data* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,struct snd_soc_card*) ; 
 struct of_device_id* FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct smdk_wm8994_data*) ; 
 int /*<<< orphan*/  samsung_wm8994_of_match ; 
 struct snd_soc_card smdk ; 
 TYPE_3__* smdk_dai ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int ret;
	struct device_node *np = pdev->dev.of_node;
	struct snd_soc_card *card = &smdk;
	struct smdk_wm8994_data *board;
	const struct of_device_id *id;

	card->dev = &pdev->dev;

	board = FUNC1(&pdev->dev, sizeof(*board), GFP_KERNEL);
	if (!board)
		return -ENOMEM;

	if (np) {
		smdk_dai[0].cpus->dai_name = NULL;
		smdk_dai[0].cpus->of_node = FUNC5(np,
				"samsung,i2s-controller", 0);
		if (!smdk_dai[0].cpus->of_node) {
			FUNC0(&pdev->dev,
			   "Property 'samsung,i2s-controller' missing or invalid\n");
			ret = -EINVAL;
		}

		smdk_dai[0].platforms->name = NULL;
		smdk_dai[0].platforms->of_node = smdk_dai[0].cpus->of_node;
	}

	id = FUNC3(FUNC4(samsung_wm8994_of_match), &pdev->dev);
	if (id)
		*board = *((struct smdk_wm8994_data *)id->data);

	FUNC6(pdev, board);

	ret = FUNC2(&pdev->dev, card);

	if (ret)
		FUNC0(&pdev->dev, "snd_soc_register_card() failed:%d\n", ret);

	return ret;
}