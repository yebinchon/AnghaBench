#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ff {int* rx_midi_error; int /*<<< orphan*/ * rx_midi_work; int /*<<< orphan*/ * rx_bytes; scalar_t__* next_ktime; int /*<<< orphan*/ * rx_midi_substreams; } ;

/* Variables and functions */
 int RCODE_COMPLETE ; 
 struct snd_rawmidi_substream* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rawmidi_substream*) ; 

__attribute__((used)) static void FUNC5(struct snd_ff *ff, unsigned int port,
				     int rcode)
{
	struct snd_rawmidi_substream *substream =
				FUNC0(ff->rx_midi_substreams[port]);

	if (FUNC1(rcode)) {
		ff->rx_midi_error[port] = true;
		return;
	}

	if (rcode != RCODE_COMPLETE) {
		/* Transfer the message again, immediately. */
		ff->next_ktime[port] = 0;
		FUNC2(&ff->rx_midi_work[port]);
		return;
	}

	FUNC3(substream, ff->rx_bytes[port]);
	ff->rx_bytes[port] = 0;

	if (!FUNC4(substream))
		FUNC2(&ff->rx_midi_work[port]);
}