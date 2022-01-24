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
struct snd_soc_card {int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  TOSA_GPIO_L_MUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct snd_soc_card tosa ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct snd_soc_card *card = &tosa;
	int ret;

	ret = FUNC3(TOSA_GPIO_L_MUTE, GPIOF_OUT_INIT_LOW,
			       "Headphone Jack");
	if (ret)
		return ret;

	card->dev = &pdev->dev;

	ret = FUNC1(&pdev->dev, card);
	if (ret) {
		FUNC0(&pdev->dev, "snd_soc_register_card() failed: %d\n",
			ret);
		FUNC2(TOSA_GPIO_L_MUTE);
	}
	return ret;
}