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
struct snd_pcm_substream {scalar_t__ stream; } ;
struct hdspm {int /*<<< orphan*/ * capture_buffer; int /*<<< orphan*/ * playback_buffer; } ;

/* Variables and functions */
 int HDSPM_MAX_CHANNELS ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct hdspm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdspm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct hdspm* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	int i;
	struct hdspm *hdspm = FUNC3(substream);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		/* Just disable all channels. The saving when disabling a */
		/* smaller set is not worth the trouble. */
		for (i = 0; i < HDSPM_MAX_CHANNELS; ++i)
			FUNC1(hdspm, i, 0);

		hdspm->playback_buffer = NULL;
	} else {
		for (i = 0; i < HDSPM_MAX_CHANNELS; ++i)
			FUNC0(hdspm, i, 0);

		hdspm->capture_buffer = NULL;
	}

	FUNC2(substream);

	return 0;
}