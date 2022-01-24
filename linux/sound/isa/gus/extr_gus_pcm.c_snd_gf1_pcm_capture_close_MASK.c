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
struct snd_pcm_substream {int dummy; } ;
struct snd_gus_card {int /*<<< orphan*/ * pcm_cap_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_HANDLER_DMA_READ ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 struct snd_gus_card* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_gus_card *gus = FUNC1(substream);

	gus->pcm_cap_substream = NULL;
	FUNC0(gus, SNDRV_GF1_HANDLER_DMA_READ);
	return 0;
}