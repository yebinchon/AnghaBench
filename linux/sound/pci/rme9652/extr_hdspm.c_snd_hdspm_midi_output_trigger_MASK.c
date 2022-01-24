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
struct hdspm_midi {scalar_t__ istimer; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {struct hdspm_midi* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  snd_hdspm_midi_output_timer ; 
 int /*<<< orphan*/  FUNC2 (struct hdspm_midi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct snd_rawmidi_substream *substream, int up)
{
	struct hdspm_midi *hmidi;
	unsigned long flags;

	hmidi = substream->rmidi->private_data;
	FUNC3 (&hmidi->lock, flags);
	if (up) {
		if (!hmidi->istimer) {
			FUNC5(&hmidi->timer,
				    snd_hdspm_midi_output_timer, 0);
			FUNC1(&hmidi->timer, 1 + jiffies);
			hmidi->istimer++;
		}
	} else {
		if (hmidi->istimer && --hmidi->istimer <= 0)
			FUNC0 (&hmidi->timer);
	}
	FUNC4 (&hmidi->lock, flags);
	if (up)
		FUNC2(hmidi);
}