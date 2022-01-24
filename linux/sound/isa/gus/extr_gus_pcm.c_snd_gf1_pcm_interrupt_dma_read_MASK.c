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
struct snd_gus_card {int /*<<< orphan*/ * pcm_cap_substream; scalar_t__ c_period_size; int /*<<< orphan*/  c_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_GB_REC_DMA_CONTROL ; 
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_START ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct snd_gus_card * gus)
{
	FUNC1(gus, SNDRV_GF1_GB_REC_DMA_CONTROL, 0);	/* disable sampling */
	FUNC0(gus, SNDRV_GF1_GB_REC_DMA_CONTROL);	/* Sampling Control Register */
	if (gus->pcm_cap_substream != NULL) {
		FUNC2(gus->pcm_cap_substream); 
		FUNC3(gus->pcm_cap_substream, SNDRV_PCM_TRIGGER_START);
		gus->c_pos += gus->c_period_size;
		FUNC4(gus->pcm_cap_substream);
	}
}