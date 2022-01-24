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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct esschan {int running; int /*<<< orphan*/  hwptr; int /*<<< orphan*/  count; int /*<<< orphan*/  bob_freq; } ;
struct es1968 {int /*<<< orphan*/  substream_lock; } ;
struct TYPE_2__ {struct esschan* private_data; } ;

/* Variables and functions */
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct es1968*) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct es1968*,struct esschan*) ; 
 int /*<<< orphan*/  FUNC3 (struct es1968*,struct esschan*) ; 
 struct es1968* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream, int cmd)
{
	struct es1968 *chip = FUNC4(substream);
	struct esschan *es = substream->runtime->private_data;

	FUNC5(&chip->substream_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		if (es->running)
			break;
		FUNC1(chip, es->bob_freq);
		es->count = 0;
		es->hwptr = 0;
		FUNC2(chip, es);
		es->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		if (! es->running)
			break;
		FUNC3(chip, es);
		es->running = 0;
		FUNC0(chip);
		break;
	}
	FUNC6(&chip->substream_lock);
	return 0;
}