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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simone_snd_ac97_device ; 
 int FUNC5 (struct snd_soc_card*) ; 
 struct snd_soc_card snd_soc_simone ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct snd_soc_card *card = &snd_soc_simone;
	int ret;

	simone_snd_ac97_device = FUNC3("ac97-codec",
								 -1, NULL, 0);
	if (FUNC0(simone_snd_ac97_device))
		return FUNC1(simone_snd_ac97_device);

	card->dev = &pdev->dev;

	ret = FUNC5(card);
	if (ret) {
		FUNC2(&pdev->dev, "snd_soc_register_card() failed: %d\n",
			ret);
		FUNC4(simone_snd_ac97_device);
	}

	return ret;
}