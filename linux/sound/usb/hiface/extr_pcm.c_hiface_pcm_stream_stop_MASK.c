#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcm_runtime {scalar_t__ stream_state; TYPE_1__* out_urbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  instance; int /*<<< orphan*/  submitted; } ;

/* Variables and functions */
 int PCM_N_URBS ; 
 scalar_t__ STREAM_DISABLED ; 
 scalar_t__ STREAM_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct pcm_runtime *rt)
{
	int i, time;

	if (rt->stream_state != STREAM_DISABLED) {
		rt->stream_state = STREAM_STOPPING;

		for (i = 0; i < PCM_N_URBS; i++) {
			time = FUNC2(
					&rt->out_urbs[i].submitted, 100);
			if (!time)
				FUNC0(
					&rt->out_urbs[i].submitted);
			FUNC1(&rt->out_urbs[i].instance);
		}

		rt->stream_state = STREAM_DISABLED;
	}
}