#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_pcm_runtime {int channels; int sample_bits; int /*<<< orphan*/  format; } ;
struct TYPE_5__ {int* cmd; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_2__ rmh; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_0C_DEF_STREAM ; 
 int FUNC0 (int,int) ; 
 int STREAM_FMT_16b ; 
 int STREAM_FMT_OFFSET ; 
 int STREAM_FMT_intel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lx6464es*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct lx6464es *chip, struct snd_pcm_runtime *runtime,
			 u32 pipe, int is_capture)
{
	int err;
	u32 pipe_cmd = FUNC0(is_capture, pipe);
	u32 channels = runtime->channels;

	if (runtime->channels != channels)
		FUNC1(chip->card->dev, "channel count mismatch: %d vs %d",
			   runtime->channels, channels);

	FUNC4(&chip->msg_lock);
	FUNC2(&chip->rmh, CMD_0C_DEF_STREAM);

	chip->rmh.cmd[0] |= pipe_cmd;

	if (runtime->sample_bits == 16)
		/* 16 bit format */
		chip->rmh.cmd[0] |= (STREAM_FMT_16b << STREAM_FMT_OFFSET);

	if (FUNC6(runtime->format))
		/* little endian/intel format */
		chip->rmh.cmd[0] |= (STREAM_FMT_intel << STREAM_FMT_OFFSET);

	chip->rmh.cmd[0] |= channels-1;

	err = FUNC3(chip, &chip->rmh);
	FUNC5(&chip->msg_lock);

	return err;
}