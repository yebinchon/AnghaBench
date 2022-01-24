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
typedef  int u8 ;
typedef  int u16 ;
struct snd_rawmidi_substream {size_t number; } ;
struct snd_card {struct mts64* private_data; } ;
struct mts64 {int current_midi_input_port; int* mode; int /*<<< orphan*/  lock; struct snd_rawmidi_substream** midi_input_substream; TYPE_1__* pardev; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int MTS64_MODE_INPUT_TRIGGERED ; 
 int MTS64_STAT_PORT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_substream*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *private)
{
	struct mts64 *mts = ((struct snd_card*)private)->private_data;
	u16 ret;
	u8 status, data;
	struct snd_rawmidi_substream *substream;

	FUNC3(&mts->lock);
	ret = FUNC1(mts->pardev->port);
	data = ret & 0x00ff;
	status = ret >> 8;

	if (status & MTS64_STAT_PORT) {
		mts->current_midi_input_port = FUNC0(data);
	} else {
		if (mts->current_midi_input_port == -1) 
			goto __out;
		substream = mts->midi_input_substream[mts->current_midi_input_port];
		if (mts->mode[substream->number] & MTS64_MODE_INPUT_TRIGGERED)
			FUNC2(substream, &data, 1);
	}
__out:
	FUNC4(&mts->lock);
}