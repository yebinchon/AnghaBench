#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int channels; int spk_mask; int ca_index; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* channel_allocations ; 
 int FUNC1 (unsigned char) ; 

__attribute__((used)) static int FUNC2(int chs, unsigned char *map)
{
	int i, spks = 0, spk_mask = 0;

	for (i = 0; i < chs; i++) {
		int mask = FUNC1(map[i]);

		if (mask) {
			spk_mask |= mask;
			spks++;
		}
	}

	for (i = 0; i < FUNC0(channel_allocations); i++) {
		if ((chs == channel_allocations[i].channels ||
		     spks == channel_allocations[i].channels) &&
		    (spk_mask & channel_allocations[i].spk_mask) ==
				channel_allocations[i].spk_mask)
			return channel_allocations[i].ca_index;
	}
	return -1;
}