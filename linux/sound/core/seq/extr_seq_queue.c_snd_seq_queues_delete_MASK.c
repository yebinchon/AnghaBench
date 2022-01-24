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

/* Variables and functions */
 int SNDRV_SEQ_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__* queue_list ; 

void FUNC1(void)
{
	int i;

	/* clear list */
	for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
		if (queue_list[i])
			FUNC0(queue_list[i]);
	}
}