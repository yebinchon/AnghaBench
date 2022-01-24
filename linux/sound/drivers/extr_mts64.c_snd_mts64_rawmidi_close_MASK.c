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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct mts64 {scalar_t__ open_count; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct mts64* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mts64*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	struct mts64 *mts = substream->rmidi->private_data;
	unsigned long flags;

	--(mts->open_count);
	if (mts->open_count == 0) {
		/* We need the spinlock_irqsave here because we can still
		   have IRQs at this point */
		FUNC2(&mts->lock, flags);
		FUNC1(mts);
		FUNC3(&mts->lock, flags);

		FUNC0(500);

	} else if (mts->open_count < 0)
		mts->open_count = 0;

	return 0;
}