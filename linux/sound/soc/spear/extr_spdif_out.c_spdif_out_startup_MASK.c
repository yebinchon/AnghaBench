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
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct spdif_out_dev* FUNC1 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC2 (struct spdif_out_dev*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
		struct snd_soc_dai *cpu_dai)
{
	struct spdif_out_dev *host = FUNC1(cpu_dai);
	int ret;

	if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
		return -EINVAL;

	ret = FUNC0(host->clk);
	if (ret)
		return ret;

	host->running = true;
	FUNC2(host);

	return 0;
}