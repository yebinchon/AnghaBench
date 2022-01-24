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
struct snd_card {int /*<<< orphan*/  dev; struct attribute_group const** dev_groups; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct attribute_group const**) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(struct snd_card *card,
			  const struct attribute_group *group)
{
	int i;

	/* loop for (arraysize-1) here to keep NULL at the last entry */
	for (i = 0; i < FUNC0(card->dev_groups) - 1; i++) {
		if (!card->dev_groups[i]) {
			card->dev_groups[i] = group;
			return 0;
		}
	}

	FUNC1(card->dev, "Too many groups assigned\n");
	return -ENOSPC;
}