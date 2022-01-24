#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct loopback_pcm {TYPE_2__* cable; TYPE_1__* substream; scalar_t__ period_update_pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int stream; } ;

/* Variables and functions */
 struct loopback_pcm* dpcm ; 
 struct loopback_pcm* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct loopback_pcm*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct loopback_pcm *dpcm = FUNC0(dpcm, t, timer);
	unsigned long flags;

	FUNC4(&dpcm->cable->lock, flags);
	if (FUNC1(dpcm->cable) & (1 << dpcm->substream->stream)) {
		FUNC2(dpcm);
		if (dpcm->period_update_pending) {
			dpcm->period_update_pending = 0;
			FUNC5(&dpcm->cable->lock, flags);
			/* need to unlock before calling below */
			FUNC3(dpcm->substream);
			return;
		}
	}
	FUNC5(&dpcm->cable->lock, flags);
}