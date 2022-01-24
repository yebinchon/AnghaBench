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
struct snd_pcm_substream {scalar_t__ stream; } ;
struct davinci_mcbsp_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_mcbsp_dev*,int) ; 
 struct davinci_mcbsp_dev* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct davinci_mcbsp_dev *dev = FUNC1(dai);
	int playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	FUNC0(dev, playback);
}