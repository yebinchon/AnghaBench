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
struct snd_soc_card {struct snd_soc_card* dai_link; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 
 struct snd_soc_card* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_card*) ; 
 int FUNC6 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct snd_soc_card *card;
	struct device *dev = &pdev->dev;
	int ret;

	card = FUNC4(sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	card->dev = dev;
	FUNC2(dev, card);
	ret = FUNC5(card);
	if (ret) {
		FUNC1(dev, "Error parsing OF data\n");
		goto err;
	}

	FUNC0(card);
	ret = FUNC6(card);
	if (ret)
		goto err_card_register;

	return 0;

err_card_register:
	FUNC3(card->dai_link);
err:
	FUNC3(card);
	return ret;
}