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
struct snd_motu {scalar_t__ dev_lock_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct snd_motu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct snd_motu *motu)
{
	int err;

	FUNC1(&motu->lock);

	if (motu->dev_lock_count < 0) {
		err = -EBUSY;
		goto out;
	}

	if (motu->dev_lock_count++ == 0)
		FUNC0(motu);
	err = 0;
out:
	FUNC2(&motu->lock);
	return err;
}