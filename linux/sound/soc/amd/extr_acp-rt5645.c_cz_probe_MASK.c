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
struct snd_soc_card {int /*<<< orphan*/  name; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct snd_soc_card cz_card ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret;
	struct snd_soc_card *card;

	card = &cz_card;
	cz_card.dev = &pdev->dev;
	FUNC2(pdev, card);
	ret = FUNC1(&pdev->dev, &cz_card);
	if (ret) {
		FUNC0(&pdev->dev,
				"devm_snd_soc_register_card(%s) failed: %d\n",
				cz_card.name, ret);
		return ret;
	}
	return 0;
}