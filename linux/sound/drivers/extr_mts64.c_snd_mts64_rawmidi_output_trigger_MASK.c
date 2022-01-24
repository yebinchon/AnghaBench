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
typedef  int /*<<< orphan*/  u8 ;
struct snd_rawmidi_substream {scalar_t__ number; TYPE_1__* rmidi; } ;
struct mts64 {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct mts64* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mts64*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_substream*,int) ; 
 int FUNC2 (struct snd_rawmidi_substream*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_rawmidi_substream *substream,
					     int up)
{
	struct mts64 *mts = substream->rmidi->private_data;
	u8 data;
	unsigned long flags;

	FUNC3(&mts->lock, flags);
	while (FUNC2(substream, &data, 1) == 1) {
		FUNC0(mts, data, substream->number+1);
		FUNC1(substream, 1);
	}
	FUNC4(&mts->lock, flags);
}