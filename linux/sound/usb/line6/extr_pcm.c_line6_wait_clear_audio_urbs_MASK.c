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
struct snd_line6_pcm {TYPE_1__* line6; } ;
struct line6_pcm_stream {int /*<<< orphan*/  active_urbs; } ;
struct TYPE_2__ {int iso_buffers; int /*<<< orphan*/  ifcdev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_line6_pcm *line6pcm,
					struct line6_pcm_stream *pcms)
{
	int timeout = HZ;
	int i;
	int alive;

	do {
		alive = 0;
		for (i = 0; i < line6pcm->line6->iso_buffers; i++) {
			if (FUNC3(i, &pcms->active_urbs))
				alive++;
		}
		if (!alive)
			break;
		FUNC2(TASK_UNINTERRUPTIBLE);
		FUNC1(1);
	} while (--timeout > 0);
	if (alive)
		FUNC0(line6pcm->line6->ifcdev,
			"timeout: still %d active urbs..\n", alive);
}