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
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_soc_card ams_delta_audio_card ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handset_mute ; 
 int /*<<< orphan*/  handsfree_mute ; 
 int FUNC4 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct snd_soc_card *card = &ams_delta_audio_card;
	int ret;

	card->dev = &pdev->dev;

	handset_mute = FUNC3(card->dev, "handset_mute",
				      GPIOD_OUT_HIGH);
	if (FUNC0(handset_mute))
		return FUNC1(handset_mute);

	handsfree_mute = FUNC3(card->dev, "handsfree_mute",
					GPIOD_OUT_HIGH);
	if (FUNC0(handsfree_mute))
		return FUNC1(handsfree_mute);

	ret = FUNC4(card);
	if (ret) {
		FUNC2(&pdev->dev, "snd_soc_register_card failed (%d)\n", ret);
		card->dev = NULL;
		return ret;
	}
	return 0;
}