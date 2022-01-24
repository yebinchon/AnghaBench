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
struct seq_oss_midi {int /*<<< orphan*/  coder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_oss_midi*) ; 
 int max_midi_devs ; 
 struct seq_oss_midi** midi_devs ; 
 int /*<<< orphan*/  register_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(void)
{
	int i;
	struct seq_oss_midi *mdev;
	unsigned long flags;

	FUNC2(&register_lock, flags);
	for (i = 0; i < max_midi_devs; i++) {
		if ((mdev = midi_devs[i]) != NULL) {
			FUNC1(mdev->coder);
			FUNC0(mdev);
			midi_devs[i] = NULL;
		}
	}
	max_midi_devs = 0;
	FUNC3(&register_lock, flags);
}