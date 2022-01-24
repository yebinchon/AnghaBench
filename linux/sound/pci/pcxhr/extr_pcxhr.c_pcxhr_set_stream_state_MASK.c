#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcxhr {TYPE_2__* card; int /*<<< orphan*/  mgr; } ;
struct pcxhr_stream {scalar_t__ status; TYPE_3__* substream; TYPE_1__* pipe; scalar_t__ timer_is_synced; scalar_t__ timer_buf_periods; scalar_t__ timer_period_frag; scalar_t__ timer_abs_periods; } ;
struct pcxhr_rmh {int dummy; } ;
struct TYPE_6__ {int number; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  first_audio; int /*<<< orphan*/  is_capture; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_START_STREAM ; 
 int /*<<< orphan*/  CMD_STOP_STREAM ; 
 int EINVAL ; 
 scalar_t__ PCXHR_STREAM_STATUS_SCHEDULE_RUN ; 
 scalar_t__ PCXHR_STREAM_STATUS_SCHEDULE_STOP ; 
 scalar_t__ PCXHR_STREAM_STATUS_STARTED ; 
 scalar_t__ PCXHR_STREAM_STATUS_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pcxhr_rmh*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcxhr_rmh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_pcxhr* FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcxhr *chip,
				  struct pcxhr_stream *stream)
{
	int err;
	struct pcxhr_rmh rmh;
	int stream_mask, start;

	if (stream->status == PCXHR_STREAM_STATUS_SCHEDULE_RUN)
		start = 1;
	else {
		if (stream->status != PCXHR_STREAM_STATUS_SCHEDULE_STOP) {
			FUNC0(chip->card->dev,
				"pcxhr_set_stream_state CANNOT be stopped\n");
			return -EINVAL;
		}
		start = 0;
	}
	if (!stream->substream)
		return -EINVAL;

	stream->timer_abs_periods = 0;
	stream->timer_period_frag = 0;	/* reset theoretical stream pos */
	stream->timer_buf_periods = 0;
	stream->timer_is_synced = 0;

	stream_mask =
	  stream->pipe->is_capture ? 1 : 1<<stream->substream->number;

	FUNC1(&rmh, start ? CMD_START_STREAM : CMD_STOP_STREAM);
	FUNC3(&rmh, stream->pipe->is_capture,
				  stream->pipe->first_audio, 0, stream_mask);

	chip = FUNC4(stream->substream);

	err = FUNC2(chip->mgr, &rmh);
	if (err)
		FUNC0(chip->card->dev,
			"ERROR pcxhr_set_stream_state err=%x;\n", err);
	stream->status =
	  start ? PCXHR_STREAM_STATUS_STARTED : PCXHR_STREAM_STATUS_STOPPED;
	return err;
}