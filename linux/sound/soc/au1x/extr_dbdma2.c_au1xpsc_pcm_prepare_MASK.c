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
struct au1xpsc_audio_dmadata {int /*<<< orphan*/  ddma_chan; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_dmadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_dmadata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct au1xpsc_audio_dmadata* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct au1xpsc_audio_dmadata *pcd = FUNC3(substream);

	FUNC2(pcd->ddma_chan);

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		FUNC0(pcd);
		FUNC0(pcd);
	} else {
		FUNC1(pcd);
		FUNC1(pcd);
	}

	return 0;
}