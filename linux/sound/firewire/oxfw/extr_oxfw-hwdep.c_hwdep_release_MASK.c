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
struct snd_oxfw {int dev_lock_count; int /*<<< orphan*/  lock; } ;
struct snd_hwdep {struct snd_oxfw* private_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_hwdep *hwdep, struct file *file)
{
	struct snd_oxfw *oxfw = hwdep->private_data;

	FUNC0(&oxfw->lock);
	if (oxfw->dev_lock_count == -1)
		oxfw->dev_lock_count = 0;
	FUNC1(&oxfw->lock);

	return 0;
}