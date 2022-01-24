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
typedef  scalar_t__ u64 ;
struct lx_stream {int /*<<< orphan*/  stream; } ;
struct lx6464es {TYPE_1__* card; struct lx_stream playback_stream; struct lx_stream capture_stream; int /*<<< orphan*/  irqsrc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct lx6464es*,int /*<<< orphan*/ ,int*,scalar_t__*,scalar_t__*) ; 
 int FUNC3 (struct lx6464es*,struct lx_stream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct lx6464es *chip = dev_id;
	u64 notified_in_pipe_mask = 0;
	u64 notified_out_pipe_mask = 0;
	int freq_changed;
	int err;

	/* handle async events */
	err = FUNC2(chip, chip->irqsrc,
					       &freq_changed,
					       &notified_in_pipe_mask,
					       &notified_out_pipe_mask);
	if (err)
		FUNC1(chip->card->dev, "error handling async events\n");

	if (notified_in_pipe_mask) {
		struct lx_stream *lx_stream = &chip->capture_stream;

		FUNC0(chip->card->dev,
			"requesting audio transfer for capture\n");
		err = FUNC3(chip, lx_stream);
		if (err < 0)
			FUNC1(chip->card->dev,
				"cannot request new buffer for capture\n");
		FUNC4(lx_stream->stream);
	}

	if (notified_out_pipe_mask) {
		struct lx_stream *lx_stream = &chip->playback_stream;

		FUNC0(chip->card->dev,
			"requesting audio transfer for playback\n");
		err = FUNC3(chip, lx_stream);
		if (err < 0)
			FUNC1(chip->card->dev,
				"cannot request new buffer for playback\n");
		FUNC4(lx_stream->stream);
	}

	return IRQ_HANDLED;
}