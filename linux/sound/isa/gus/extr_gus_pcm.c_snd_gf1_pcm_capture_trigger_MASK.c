#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int pcm_rcntrl_reg; } ;
struct snd_gus_card {int /*<<< orphan*/  reg_lock; TYPE_1__ gf1; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_REC_DMA_CONTROL ; 
 int SNDRV_PCM_TRIGGER_START ; 
 int SNDRV_PCM_TRIGGER_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 struct snd_gus_card* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				       int cmd)
{
	struct snd_gus_card *gus = FUNC2(substream);
	int val;
	
	if (cmd == SNDRV_PCM_TRIGGER_START) {
		val = gus->gf1.pcm_rcntrl_reg;
	} else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
		val = 0;
	} else {
		return -EINVAL;
	}

	FUNC3(&gus->reg_lock);
	FUNC1(gus, SNDRV_GF1_GB_REC_DMA_CONTROL, val);
	FUNC0(gus, SNDRV_GF1_GB_REC_DMA_CONTROL);
	FUNC4(&gus->reg_lock);
	return 0;
}