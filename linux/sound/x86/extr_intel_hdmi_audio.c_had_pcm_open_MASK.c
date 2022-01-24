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
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  substream_refcount; struct snd_pcm_substream* substream; } ;
struct snd_intelhad {int /*<<< orphan*/  dev; int /*<<< orphan*/  had_spinlock; TYPE_1__ stream_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  had_pcm_hardware ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_intelhad* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_intelhad *intelhaddata;
	struct snd_pcm_runtime *runtime;
	int retval;

	intelhaddata = FUNC6(substream);
	runtime = substream->runtime;

	FUNC0(intelhaddata->dev);

	/* set the runtime hw parameter with local snd_pcm_hardware struct */
	runtime->hw = had_pcm_hardware;

	retval = FUNC3(runtime,
			 SNDRV_PCM_HW_PARAM_PERIODS);
	if (retval < 0)
		goto error;

	/* Make sure, that the period size is always aligned
	 * 64byte boundary
	 */
	retval = FUNC5(substream->runtime, 0,
			SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 64);
	if (retval < 0)
		goto error;

	retval = FUNC4(runtime, 0, 32, 24);
	if (retval < 0)
		goto error;

	/* expose PCM substream */
	FUNC7(&intelhaddata->had_spinlock);
	intelhaddata->stream_info.substream = substream;
	intelhaddata->stream_info.substream_refcount++;
	FUNC8(&intelhaddata->had_spinlock);

	return retval;
 error:
	FUNC1(intelhaddata->dev);
	FUNC2(intelhaddata->dev);
	return retval;
}