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
typedef  int uint32_t ;
struct snd_soc_dai {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  no_period_wakeup; } ;
struct kirkwood_dma_data {int ctl_play; scalar_t__ io; } ;

/* Variables and functions */
 int EINVAL ; 
 int KIRKWOOD_INT_CAUSE_PLAY_BYTES ; 
 scalar_t__ KIRKWOOD_INT_MASK ; 
 scalar_t__ KIRKWOOD_PLAYCTL ; 
 int KIRKWOOD_PLAYCTL_ENABLE_MASK ; 
 int KIRKWOOD_PLAYCTL_I2S_EN ; 
 int KIRKWOOD_PLAYCTL_I2S_MUTE ; 
 int KIRKWOOD_PLAYCTL_PAUSE ; 
 int KIRKWOOD_PLAYCTL_PLAY_BUSY ; 
 int KIRKWOOD_PLAYCTL_SPDIF_EN ; 
 int KIRKWOOD_PLAYCTL_SPDIF_MUTE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 struct kirkwood_dma_data* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				int cmd, struct snd_soc_dai *dai)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct kirkwood_dma_data *priv = FUNC3(dai);
	uint32_t ctl, value;

	ctl = FUNC2(priv->io + KIRKWOOD_PLAYCTL);
	if ((ctl & KIRKWOOD_PLAYCTL_ENABLE_MASK) == 0) {
		unsigned timeout = 5000;
		/*
		 * The Armada510 spec says that if we enter pause mode, the
		 * busy bit must be read back as clear _twice_.  Make sure
		 * we respect that otherwise we get DMA underruns.
		 */
		do {
			value = ctl;
			ctl = FUNC2(priv->io + KIRKWOOD_PLAYCTL);
			if (!((ctl | value) & KIRKWOOD_PLAYCTL_PLAY_BUSY))
				break;
			FUNC4(1);
		} while (timeout--);

		if ((ctl | value) & KIRKWOOD_PLAYCTL_PLAY_BUSY)
			FUNC0(dai->dev, "timed out waiting for busy to deassert: %08x\n",
				   ctl);
	}

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		/* configure */
		ctl = priv->ctl_play;
		if (dai->id == 0)
			ctl &= ~KIRKWOOD_PLAYCTL_SPDIF_EN;	/* i2s */
		else
			ctl &= ~KIRKWOOD_PLAYCTL_I2S_EN;	/* spdif */
		ctl = FUNC1(ctl);
		value = ctl & ~KIRKWOOD_PLAYCTL_ENABLE_MASK;
		FUNC5(value, priv->io + KIRKWOOD_PLAYCTL);

		/* enable interrupts */
		if (!runtime->no_period_wakeup) {
			value = FUNC2(priv->io + KIRKWOOD_INT_MASK);
			value |= KIRKWOOD_INT_CAUSE_PLAY_BYTES;
			FUNC5(value, priv->io + KIRKWOOD_INT_MASK);
		}

		/* enable playback */
		FUNC5(ctl, priv->io + KIRKWOOD_PLAYCTL);
		break;

	case SNDRV_PCM_TRIGGER_STOP:
		/* stop audio, disable interrupts */
		ctl |= KIRKWOOD_PLAYCTL_PAUSE | KIRKWOOD_PLAYCTL_I2S_MUTE |
				KIRKWOOD_PLAYCTL_SPDIF_MUTE;
		FUNC5(ctl, priv->io + KIRKWOOD_PLAYCTL);

		value = FUNC2(priv->io + KIRKWOOD_INT_MASK);
		value &= ~KIRKWOOD_INT_CAUSE_PLAY_BYTES;
		FUNC5(value, priv->io + KIRKWOOD_INT_MASK);

		/* disable all playbacks */
		ctl &= ~KIRKWOOD_PLAYCTL_ENABLE_MASK;
		FUNC5(ctl, priv->io + KIRKWOOD_PLAYCTL);
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		ctl |= KIRKWOOD_PLAYCTL_PAUSE | KIRKWOOD_PLAYCTL_I2S_MUTE |
				KIRKWOOD_PLAYCTL_SPDIF_MUTE;
		FUNC5(ctl, priv->io + KIRKWOOD_PLAYCTL);
		break;

	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		ctl &= ~(KIRKWOOD_PLAYCTL_PAUSE | KIRKWOOD_PLAYCTL_I2S_MUTE |
				KIRKWOOD_PLAYCTL_SPDIF_MUTE);
		ctl = FUNC1(ctl);
		FUNC5(ctl, priv->io + KIRKWOOD_PLAYCTL);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}