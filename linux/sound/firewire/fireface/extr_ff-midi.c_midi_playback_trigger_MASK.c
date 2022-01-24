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
struct snd_ff {int /*<<< orphan*/  lock; int /*<<< orphan*/ * rx_midi_work; int /*<<< orphan*/ * rx_midi_error; } ;
struct TYPE_2__ {struct snd_ff* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream,
				  int up)
{
	struct snd_ff *ff = substream->rmidi->private_data;
	unsigned long flags;

	FUNC1(&ff->lock, flags);

	if (up || !ff->rx_midi_error[substream->number])
		FUNC0(&ff->rx_midi_work[substream->number]);

	FUNC2(&ff->lock, flags);
}