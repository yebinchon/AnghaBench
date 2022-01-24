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
struct sun4i_codec {int /*<<< orphan*/  capture_dma_data; int /*<<< orphan*/  playback_dma_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dummy; } ;

/* Variables and functions */
 struct sun4i_codec* FUNC0 (struct snd_soc_card*) ; 
 struct snd_soc_card* FUNC1 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai)
{
	struct snd_soc_card *card = FUNC1(dai);
	struct sun4i_codec *scodec = FUNC0(card);

	FUNC2(dai, &scodec->playback_dma_data,
				  &scodec->capture_dma_data);

	return 0;
}