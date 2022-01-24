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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct lx6464es* private_data; int /*<<< orphan*/  hw; } ;
struct lx6464es {int board_sample_rate; TYPE_1__* card; int /*<<< orphan*/  setup_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICROBLAZE_IBL_MAX ; 
 int /*<<< orphan*/  MICROBLAZE_IBL_MIN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lx_caps ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*) ; 
 struct lx6464es* FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct lx6464es *chip = FUNC9(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err = 0;
	int board_rate;

	FUNC0(chip->card->dev, "->lx_pcm_open\n");
	FUNC2(&chip->setup_mutex);

	/* copy the struct snd_pcm_hardware struct */
	runtime->hw = lx_caps;

#if 0
	/* buffer-size should better be multiple of period-size */
	err = snd_pcm_hw_constraint_integer(runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0) {
		dev_warn(chip->card->dev, "could not constrain periods\n");
		goto exit;
	}
#endif

	/* the clock rate cannot be changed */
	board_rate = chip->board_sample_rate;
	err = FUNC6(runtime, SNDRV_PCM_HW_PARAM_RATE,
					   board_rate);

	if (err < 0) {
		FUNC1(chip->card->dev, "could not constrain periods\n");
		goto exit;
	}

	/* constrain period size */
	err = FUNC5(runtime,
					   SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
					   MICROBLAZE_IBL_MIN,
					   MICROBLAZE_IBL_MAX);
	if (err < 0) {
		FUNC1(chip->card->dev,
			   "could not constrain period size\n");
		goto exit;
	}

	FUNC7(runtime, 0,
				   SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 32);

	FUNC8(substream);
	err = 0;

exit:
	runtime->private_data = chip;

	FUNC3(&chip->setup_mutex);
	FUNC0(chip->card->dev, "<-lx_pcm_open, %d\n", err);
	return err;
}