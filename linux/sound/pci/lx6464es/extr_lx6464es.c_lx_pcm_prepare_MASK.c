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
struct snd_pcm_substream {scalar_t__ stream; TYPE_2__* runtime; } ;
struct lx6464es {int* hardware_running; scalar_t__ board_sample_rate; int /*<<< orphan*/  setup_mutex; TYPE_1__* card; } ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct lx6464es*,struct snd_pcm_substream*) ; 
 int FUNC3 (struct lx6464es*,struct snd_pcm_substream*) ; 
 int FUNC4 (struct lx6464es*,struct snd_pcm_substream*) ; 
 int FUNC5 (struct lx6464es*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct lx6464es* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct lx6464es *chip = FUNC8(substream);
	int err = 0;
	const int is_capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);

	FUNC0(chip->card->dev, "->lx_pcm_prepare\n");

	FUNC6(&chip->setup_mutex);

	if (chip->hardware_running[is_capture]) {
		err = FUNC5(chip, substream);
		if (err < 0) {
			FUNC1(chip->card->dev, "failed to stop hardware. "
				   "Error code %d\n", err);
			goto exit;
		}

		err = FUNC2(chip, substream);
		if (err < 0) {
			FUNC1(chip->card->dev, "failed to close hardware. "
				   "Error code %d\n", err);
			goto exit;
		}
	}

	FUNC0(chip->card->dev, "opening hardware\n");
	err = FUNC3(chip, substream);
	if (err < 0) {
		FUNC1(chip->card->dev, "failed to open hardware. "
			   "Error code %d\n", err);
		goto exit;
	}

	err = FUNC4(chip, substream);
	if (err < 0) {
		FUNC1(chip->card->dev, "failed to start hardware. "
			   "Error code %d\n", err);
		goto exit;
	}

	chip->hardware_running[is_capture] = 1;

	if (chip->board_sample_rate != substream->runtime->rate) {
		if (!err)
			chip->board_sample_rate = substream->runtime->rate;
	}

exit:
	FUNC7(&chip->setup_mutex);
	return err;
}