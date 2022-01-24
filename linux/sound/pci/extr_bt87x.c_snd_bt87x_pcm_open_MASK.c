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
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_bt87x {int /*<<< orphan*/  opened; struct snd_pcm_substream* substream; } ;
struct TYPE_2__ {scalar_t__ device; } ;

/* Variables and functions */
 scalar_t__ DEVICE_DIGITAL ; 
 int EBUSY ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct snd_bt87x*,struct snd_pcm_runtime*) ; 
 int FUNC3 (struct snd_bt87x*,struct snd_pcm_runtime*) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_bt87x* FUNC5 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_bt87x *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	if (FUNC6(0, &chip->opened))
		return -EBUSY;

	if (substream->pcm->device == DEVICE_DIGITAL)
		err = FUNC3(chip, runtime);
	else
		err = FUNC2(chip, runtime);
	if (err < 0)
		goto _error;

	err = FUNC4(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0)
		goto _error;

	chip->substream = substream;
	return 0;

_error:
	FUNC0(0, &chip->opened);
	FUNC1();
	return err;
}