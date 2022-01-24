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
struct snd_soc_card {int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POODLE_LOCOMO_GPIO_AMP_ON ; 
 int /*<<< orphan*/  POODLE_LOCOMO_GPIO_MUTE_L ; 
 int /*<<< orphan*/  POODLE_LOCOMO_GPIO_MUTE_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_card poodle ; 
 TYPE_1__ poodle_locomo_device ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct snd_soc_card *card = &poodle;
	int ret;

	FUNC2(&poodle_locomo_device.dev,
		POODLE_LOCOMO_GPIO_AMP_ON, 0);
	/* should we mute HP at startup - burning power ?*/
	FUNC2(&poodle_locomo_device.dev,
		POODLE_LOCOMO_GPIO_MUTE_L, 0);
	FUNC2(&poodle_locomo_device.dev,
		POODLE_LOCOMO_GPIO_MUTE_R, 0);

	card->dev = &pdev->dev;

	ret = FUNC1(&pdev->dev, card);
	if (ret)
		FUNC0(&pdev->dev, "snd_soc_register_card() failed: %d\n",
			ret);
	return ret;
}