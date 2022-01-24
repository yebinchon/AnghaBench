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
struct seq_oss_midi {size_t seq_device; int /*<<< orphan*/  coder; int /*<<< orphan*/  use_lock; } ;

/* Variables and functions */
 struct seq_oss_midi* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_oss_midi*) ; 
 int max_midi_devs ; 
 int /*<<< orphan*/ ** midi_devs ; 
 int /*<<< orphan*/  register_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(int client, int port)
{
	struct seq_oss_midi *mdev;
	unsigned long flags;
	int index;

	if ((mdev = FUNC0(client, port)) != NULL) {
		FUNC5(&register_lock, flags);
		midi_devs[mdev->seq_device] = NULL;
		FUNC6(&register_lock, flags);
		FUNC3(&mdev->use_lock);
		FUNC4(&mdev->use_lock);
		FUNC2(mdev->coder);
		FUNC1(mdev);
	}
	FUNC5(&register_lock, flags);
	for (index = max_midi_devs - 1; index >= 0; index--) {
		if (midi_devs[index])
			break;
	}
	max_midi_devs = index + 1;
	FUNC6(&register_lock, flags);
	return 0;
}