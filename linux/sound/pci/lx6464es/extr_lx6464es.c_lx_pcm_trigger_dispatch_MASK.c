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
struct lx_stream {int /*<<< orphan*/  status; } ;
struct lx6464es {int /*<<< orphan*/  lock; int /*<<< orphan*/  playback_stream; int /*<<< orphan*/  capture_stream; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LX_STREAM_STATUS_SCHEDULE_RUN ; 
 int /*<<< orphan*/  LX_STREAM_STATUS_SCHEDULE_STOP ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct lx6464es*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct lx6464es *chip,
				   struct lx_stream *lx_stream, int cmd)
{
	int err = 0;

	FUNC1(&chip->lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		lx_stream->status = LX_STREAM_STATUS_SCHEDULE_RUN;
		break;

	case SNDRV_PCM_TRIGGER_STOP:
		lx_stream->status = LX_STREAM_STATUS_SCHEDULE_STOP;
		break;

	default:
		err = -EINVAL;
		goto exit;
	}

	FUNC0(chip, &chip->capture_stream);
	FUNC0(chip, &chip->playback_stream);

exit:
	FUNC2(&chip->lock);
	return err;
}