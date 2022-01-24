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
struct TYPE_3__ {int* sample_status; } ;
typedef  TYPE_1__ snd_wavefront_t ;

/* Variables and functions */
 int WF_MAX_SAMPLE ; 
 int WF_SLOT_FILLED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int 
FUNC1 (snd_wavefront_t *dev)

{
	int i;

	for (i = 0; i < WF_MAX_SAMPLE; i++) {
		if (!(dev->sample_status[i] & WF_SLOT_FILLED)) {
			return i;
		}
	}
	FUNC0 ("no free sample slots!\n");
	return -1;
}