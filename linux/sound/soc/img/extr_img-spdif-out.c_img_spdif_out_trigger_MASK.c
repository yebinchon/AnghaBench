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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct img_spdif_out {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMG_SPDIF_OUT_CTL ; 
 int /*<<< orphan*/  IMG_SPDIF_OUT_CTL_SRT_MASK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct img_spdif_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_spdif_out*) ; 
 int /*<<< orphan*/  FUNC2 (struct img_spdif_out*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct img_spdif_out* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream, int cmd,
			struct snd_soc_dai *dai)
{
	struct img_spdif_out *spdif = FUNC3(dai);
	u32 reg;
	unsigned long flags;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		reg = FUNC0(spdif, IMG_SPDIF_OUT_CTL);
		reg |= IMG_SPDIF_OUT_CTL_SRT_MASK;
		FUNC2(spdif, reg, IMG_SPDIF_OUT_CTL);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC4(&spdif->lock, flags);
		FUNC1(spdif);
		FUNC5(&spdif->lock, flags);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}