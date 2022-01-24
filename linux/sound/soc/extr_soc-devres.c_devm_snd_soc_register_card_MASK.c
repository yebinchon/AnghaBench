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
struct snd_soc_card {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_card_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct snd_soc_card**) ; 
 struct snd_soc_card** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card**) ; 
 int FUNC3 (struct snd_soc_card*) ; 

int FUNC4(struct device *dev, struct snd_soc_card *card)
{
	struct snd_soc_card **ptr;
	int ret;

	ptr = FUNC1(devm_card_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC3(card);
	if (ret == 0) {
		*ptr = card;
		FUNC0(dev, ptr);
	} else {
		FUNC2(ptr);
	}

	return ret;
}