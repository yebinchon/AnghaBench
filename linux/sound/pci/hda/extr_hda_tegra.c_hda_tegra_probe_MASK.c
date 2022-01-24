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
struct snd_card {struct azx* private_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct azx {int dummy; } ;
struct hda_tegra {int /*<<< orphan*/  probe_work; int /*<<< orphan*/ * dev; struct azx chip; } ;

/* Variables and functions */
 unsigned int AZX_DCAPS_CORBRP_SELF_CLEAR ; 
 unsigned int AZX_DCAPS_PM_RUNTIME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct azx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_card*) ; 
 struct hda_tegra* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_card*,unsigned int const,struct hda_tegra*) ; 
 int FUNC5 (struct hda_tegra*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_card*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	const unsigned int driver_flags = AZX_DCAPS_CORBRP_SELF_CLEAR |
					  AZX_DCAPS_PM_RUNTIME;
	struct snd_card *card;
	struct azx *chip;
	struct hda_tegra *hda;
	int err;

	hda = FUNC3(&pdev->dev, sizeof(*hda), GFP_KERNEL);
	if (!hda)
		return -ENOMEM;
	hda->dev = &pdev->dev;
	chip = &hda->chip;

	err = FUNC10(&pdev->dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
			   THIS_MODULE, 0, &card);
	if (err < 0) {
		FUNC1(&pdev->dev, "Error creating card!\n");
		return err;
	}

	err = FUNC5(hda);
	if (err < 0)
		goto out_free;

	err = FUNC4(card, driver_flags, hda);
	if (err < 0)
		goto out_free;
	card->private_data = chip;

	FUNC2(&pdev->dev, card);

	FUNC6(hda->dev);
	if (!FUNC0(chip))
		FUNC7(hda->dev);

	FUNC8(&hda->probe_work);

	return 0;

out_free:
	FUNC9(card);
	return err;
}