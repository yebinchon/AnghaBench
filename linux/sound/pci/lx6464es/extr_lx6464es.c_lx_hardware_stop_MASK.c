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
struct snd_pcm_substream {scalar_t__ stream; } ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct lx6464es *chip,
			    struct snd_pcm_substream *substream)
{
	int err = 0;
	int is_capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);

	FUNC0(chip->card->dev, "pausing pipe\n");
	err = FUNC2(chip, 0, is_capture);
	if (err < 0) {
		FUNC1(chip->card->dev, "pausing pipe failed\n");
		return err;
	}

	FUNC0(chip->card->dev, "waiting for pipe to become idle\n");
	err = FUNC4(chip, 0, is_capture);
	if (err < 0) {
		FUNC1(chip->card->dev, "waiting for pipe failed\n");
		return err;
	}

	FUNC0(chip->card->dev, "stopping pipe\n");
	err = FUNC3(chip, 0, is_capture);
	if (err < 0) {
		FUNC1(chip->card->dev, "stopping pipe failed\n");
		return err;
	}

	return err;
}