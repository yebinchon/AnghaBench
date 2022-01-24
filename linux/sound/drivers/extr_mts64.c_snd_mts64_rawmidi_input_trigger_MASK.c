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
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct mts64 {int /*<<< orphan*/  lock; int /*<<< orphan*/ * mode; } ;
struct TYPE_2__ {struct mts64* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTS64_MODE_INPUT_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct snd_rawmidi_substream *substream,
					    int up)
{
	struct mts64 *mts = substream->rmidi->private_data;
	unsigned long flags;

	FUNC0(&mts->lock, flags);
	if (up)
		mts->mode[substream->number] |= MTS64_MODE_INPUT_TRIGGERED;
	else
 		mts->mode[substream->number] &= ~MTS64_MODE_INPUT_TRIGGERED;
	
	FUNC1(&mts->lock, flags);
}