#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_card {int num_links; int /*<<< orphan*/ * dai_link; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct snd_soc_card* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 int FUNC3 (struct snd_soc_card*,char*) ; 
 int /*<<< orphan*/  storm_dai_link ; 
 int FUNC4 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct snd_soc_card *card;
	int ret;

	card = FUNC1(&pdev->dev, sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	card->dev = &pdev->dev;

	ret = FUNC3(card, "qcom,model");
	if (ret) {
		FUNC0(&pdev->dev, "error parsing card name: %d\n", ret);
		return ret;
	}

	card->dai_link	= &storm_dai_link;
	card->num_links	= 1;

	ret = FUNC4(card);
	if (ret) {
		FUNC0(&pdev->dev, "error resolving dai links: %d\n", ret);
		return ret;
	}

	ret = FUNC2(&pdev->dev, card);
	if (ret)
		FUNC0(&pdev->dev, "error registering soundcard: %d\n", ret);

	return ret;

}