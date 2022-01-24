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
struct snd_card {int /*<<< orphan*/  files_lock; int /*<<< orphan*/  files_list; int /*<<< orphan*/  remove_sleep; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct snd_card *card)
{
	int err;

	err = FUNC2(card);
	if (err < 0) {
		FUNC0(card->dev,
			"snd_card_disconnect error (%d), skipping sync\n",
			err);
		return;
	}

	FUNC3(&card->files_lock);
	FUNC5(card->remove_sleep,
			    FUNC1(&card->files_list),
			    card->files_lock);
	FUNC4(&card->files_lock);
}