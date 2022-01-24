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
struct spdif_in_dev {scalar_t__ io_base; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ SPDIF_IN_IRQ_MASK ; 
 struct spdif_in_dev* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct spdif_in_dev *host = FUNC0(dai);

	if (substream->stream != SNDRV_PCM_STREAM_CAPTURE)
		return;

	FUNC1(0x0, host->io_base + SPDIF_IN_IRQ_MASK);
}