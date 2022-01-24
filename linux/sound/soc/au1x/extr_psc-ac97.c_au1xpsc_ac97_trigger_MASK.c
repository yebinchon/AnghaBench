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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct au1xpsc_audio_data*) ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct au1xpsc_audio_data* FUNC8 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
				int cmd, struct snd_soc_dai *dai)
{
	struct au1xpsc_audio_data *pscdata = FUNC8(dai);
	int ret, stype = substream->stream;

	ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		FUNC7(FUNC0(stype), FUNC4(pscdata));
		FUNC9(); /* drain writebuffer */
		FUNC7(FUNC1(stype), FUNC4(pscdata));
		FUNC9(); /* drain writebuffer */
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC7(FUNC2(stype), FUNC4(pscdata));
		FUNC9(); /* drain writebuffer */

		while (FUNC6(FUNC5(pscdata)) & FUNC3(stype))
			asm volatile ("nop");

		FUNC7(FUNC0(stype), FUNC4(pscdata));
		FUNC9(); /* drain writebuffer */

		break;
	default:
		ret = -EINVAL;
	}
	return ret;
}