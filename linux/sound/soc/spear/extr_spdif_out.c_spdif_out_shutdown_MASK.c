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
struct spdif_out_dev {int running; int /*<<< orphan*/  clk; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spdif_out_dev* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct spdif_out_dev *host = FUNC1(dai);

	if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
		return;

	FUNC0(host->clk);
	host->running = false;
}