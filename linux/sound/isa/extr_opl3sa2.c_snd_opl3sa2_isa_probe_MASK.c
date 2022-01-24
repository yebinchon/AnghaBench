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
struct snd_card {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct snd_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 
 int FUNC2 (struct device*,unsigned int,struct snd_card**) ; 
 int FUNC3 (struct snd_card*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct device *pdev,
				 unsigned int dev)
{
	struct snd_card *card;
	int err;

	err = FUNC2(pdev, dev, &card);
	if (err < 0)
		return err;
	if ((err = FUNC3(card, dev)) < 0) {
		FUNC1(card);
		return err;
	}
	FUNC0(pdev, card);
	return 0;
}