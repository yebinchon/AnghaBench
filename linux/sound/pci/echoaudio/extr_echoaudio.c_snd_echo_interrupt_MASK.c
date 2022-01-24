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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct echoaudio {int* last_period; TYPE_2__* card; int /*<<< orphan*/  midi_buffer; scalar_t__ midi_in; int /*<<< orphan*/  lock; struct snd_pcm_substream** substream; } ;
struct audiopipe {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int period_size; scalar_t__ private_data; } ;

/* Variables and functions */
 int DSP_MAXPIPES ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PIPE_STATE_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct echoaudio *chip = dev_id;
	struct snd_pcm_substream *substream;
	int period, ss, st;

	FUNC5(&chip->lock);
	st = FUNC2(chip);
	if (st < 0) {
		FUNC6(&chip->lock);
		return IRQ_NONE;
	}
	/* The hardware doesn't tell us which substream caused the irq,
	thus we have to check all running substreams. */
	for (ss = 0; ss < DSP_MAXPIPES; ss++) {
		substream = chip->substream[ss];
		if (substream && ((struct audiopipe *)substream->runtime->
				private_data)->state == PIPE_STATE_STARTED) {
			period = FUNC1(substream) /
				substream->runtime->period_size;
			if (period != chip->last_period[ss]) {
				chip->last_period[ss] = period;
				FUNC6(&chip->lock);
				FUNC3(substream);
				FUNC5(&chip->lock);
			}
		}
	}
	FUNC6(&chip->lock);

#ifdef ECHOCARD_HAS_MIDI
	if (st > 0 && chip->midi_in) {
		snd_rawmidi_receive(chip->midi_in, chip->midi_buffer, st);
		dev_dbg(chip->card->dev, "rawmidi_iread=%d\n", st);
	}
#endif
	return IRQ_HANDLED;
}