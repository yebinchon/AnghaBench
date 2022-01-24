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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 scalar_t__ dmic_wakeup_delay ; 
 struct snd_soc_card rockchip_sound_card ; 
 int FUNC4 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct snd_soc_card *card = &rockchip_sound_card;
	int ret;

	ret = FUNC4(&pdev->dev, card);
	if (ret < 0) {
		FUNC1(&pdev->dev, "Failed to parse dais: %d\n", ret);
		return ret;
	}

	/* Set DMIC wakeup delay */
	ret = FUNC2(&pdev->dev, "dmic-wakeup-delay-ms",
					&dmic_wakeup_delay);
	if (ret) {
		dmic_wakeup_delay = 0;
		FUNC0(&pdev->dev,
			"no optional property 'dmic-wakeup-delay-ms' found, default: no delay\n");
	}

	card->dev = &pdev->dev;
	return FUNC3(&pdev->dev, card);
}