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
struct snd_ff {int dev_lock_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_ff *ff)
{
	int err;

	FUNC0(&ff->lock);

	if (ff->dev_lock_count == 0) {
		ff->dev_lock_count = -1;
		err = 0;
	} else {
		err = -EBUSY;
	}

	FUNC1(&ff->lock);

	return err;
}