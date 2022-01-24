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
typedef  int uint32_t ;
struct ssp_device {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SSCR0 ; 
 int SSCR0_SSE ; 
 int /*<<< orphan*/  SSCR1 ; 
 int SSCR1_RSRE ; 
 int SSCR1_TSRE ; 
 int /*<<< orphan*/  SSPSP ; 
 int /*<<< orphan*/  SSSR ; 
 int FUNC0 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream,
				    struct ssp_device *ssp, int value)
{
	uint32_t sscr0 = FUNC0(ssp, SSCR0);
	uint32_t sscr1 = FUNC0(ssp, SSCR1);
	uint32_t sspsp = FUNC0(ssp, SSPSP);
	uint32_t sssr = FUNC0(ssp, SSSR);

	if (value && (sscr0 & SSCR0_SSE))
		FUNC1(ssp, SSCR0, sscr0 & ~SSCR0_SSE);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		if (value)
			sscr1 |= SSCR1_TSRE;
		else
			sscr1 &= ~SSCR1_TSRE;
	} else {
		if (value)
			sscr1 |= SSCR1_RSRE;
		else
			sscr1 &= ~SSCR1_RSRE;
	}

	FUNC1(ssp, SSCR1, sscr1);

	if (value) {
		FUNC1(ssp, SSSR, sssr);
		FUNC1(ssp, SSPSP, sspsp);
		FUNC1(ssp, SSCR0, sscr0 | SSCR0_SSE);
	}
}