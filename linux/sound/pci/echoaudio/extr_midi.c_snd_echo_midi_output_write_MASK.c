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
struct timer_list {int dummy; } ;
struct echoaudio {int midi_full; int /*<<< orphan*/  lock; TYPE_1__* card; int /*<<< orphan*/  timer; scalar_t__ tinuse; int /*<<< orphan*/  midi_out; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int MIDI_OUT_BUFFER_SIZE ; 
 struct echoaudio* chip ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct echoaudio* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 int FUNC9 (struct echoaudio*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct echoaudio *chip = FUNC2(chip, t, timer);
	unsigned long flags;
	int bytes, sent, time;
	unsigned char buf[MIDI_OUT_BUFFER_SIZE - 1];

	/* No interrupts are involved: we have to check at regular intervals
	if the card's output buffer has room for new data. */
	sent = bytes = 0;
	FUNC7(&chip->lock, flags);
	chip->midi_full = 0;
	if (!FUNC5(chip->midi_out)) {
		bytes = FUNC6(chip->midi_out, buf,
						  MIDI_OUT_BUFFER_SIZE - 1);
		FUNC0(chip->card->dev, "Try to send %d bytes...\n", bytes);
		sent = FUNC9(chip, buf, bytes);
		if (sent < 0) {
			FUNC1(chip->card->dev,
				"write_midi() error %d\n", sent);
			/* retry later */
			sent = 9000;
			chip->midi_full = 1;
		} else if (sent > 0) {
			FUNC0(chip->card->dev, "%d bytes sent\n", sent);
			FUNC4(chip->midi_out, sent);
		} else {
			/* Buffer is full. DSP's internal buffer is 64 (128 ?)
			bytes long. Let's wait until half of them are sent */
			FUNC0(chip->card->dev, "Full\n");
			sent = 32;
			chip->midi_full = 1;
		}
	}

	/* We restart the timer only if there is some data left to send */
	if (!FUNC5(chip->midi_out) && chip->tinuse) {
		/* The timer will expire slightly after the data has been
		   sent */
		time = (sent << 3) / 25 + 1;	/* 8/25=0.32ms to send a byte */
		FUNC3(&chip->timer, jiffies + (time * HZ + 999) / 1000);
		FUNC0(chip->card->dev,
			"Timer armed(%d)\n", ((time * HZ + 999) / 1000));
	}
	FUNC8(&chip->lock, flags);
}