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
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct echoaudio {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** substream; TYPE_1__* card; } ;
struct audiopipe {size_t index; } ;
struct TYPE_4__ {scalar_t__ private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*,struct audiopipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct echoaudio* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct echoaudio *chip;
	struct audiopipe *pipe;

	chip = FUNC3(substream);
	pipe = (struct audiopipe *) substream->runtime->private_data;

	FUNC4(&chip->lock);
	if (pipe->index >= 0) {
		FUNC0(chip->card->dev, "pcm_hw_free(%d)\n", pipe->index);
		FUNC1(chip, pipe);
		chip->substream[pipe->index] = NULL;
		pipe->index = -1;
	}
	FUNC5(&chip->lock);

	FUNC2(substream);
	return 0;
}