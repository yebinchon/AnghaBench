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
struct snd_card {struct completion* release_completion; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 

int FUNC3(struct snd_card *card)
{
	struct completion released;
	int ret;

	FUNC0(&released);
	card->release_completion = &released;
	ret = FUNC1(card);
	if (ret)
		return ret;
	/* wait, until all devices are ready for the free operation */
	FUNC2(&released);
	return 0;
}