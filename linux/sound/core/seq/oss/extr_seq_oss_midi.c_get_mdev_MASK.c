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
struct seq_oss_midi {int /*<<< orphan*/  use_lock; } ;

/* Variables and functions */
 struct seq_oss_midi** midi_devs ; 
 int /*<<< orphan*/  register_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct seq_oss_midi *
FUNC3(int dev)
{
	struct seq_oss_midi *mdev;
	unsigned long flags;

	FUNC1(&register_lock, flags);
	mdev = midi_devs[dev];
	if (mdev)
		FUNC0(&mdev->use_lock);
	FUNC2(&register_lock, flags);
	return mdev;
}