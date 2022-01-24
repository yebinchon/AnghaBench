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
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct ep93xx_ac97_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int AC97RXCR_CM ; 
 unsigned int AC97RXCR_REN ; 
 unsigned int AC97RXCR_RX3 ; 
 unsigned int AC97RXCR_RX4 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int AC97SR_TXFE ; 
 unsigned int AC97SR_TXUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int AC97TXCR_CM ; 
 unsigned int AC97TXCR_TEN ; 
 unsigned int AC97TXCR_TX3 ; 
 unsigned int AC97TXCR_TX4 ; 
 unsigned long AC97_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC4 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long jiffies ; 
 struct ep93xx_ac97_info* FUNC6 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			       int cmd, struct snd_soc_dai *dai)
{
	struct ep93xx_ac97_info *info = FUNC6(dai);
	unsigned v = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
			/*
			 * Enable compact mode, TX slots 3 & 4, and the TX FIFO
			 * itself.
			 */
			v |= AC97TXCR_CM;
			v |= AC97TXCR_TX3 | AC97TXCR_TX4;
			v |= AC97TXCR_TEN;
			FUNC5(info, FUNC2(1), v);
		} else {
			/*
			 * Enable compact mode, RX slots 3 & 4, and the RX FIFO
			 * itself.
			 */
			v |= AC97RXCR_CM;
			v |= AC97RXCR_RX3 | AC97RXCR_RX4;
			v |= AC97RXCR_REN;
			FUNC5(info, FUNC0(1), v);
		}
		break;

	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
			/*
			 * As per Cirrus EP93xx errata described below:
			 *
			 * http://www.cirrus.com/en/pubs/errata/ER667E2B.pdf
			 *
			 * we will wait for the TX FIFO to be empty before
			 * clearing the TEN bit.
			 */
			unsigned long timeout = jiffies + AC97_TIMEOUT;

			do {
				v = FUNC4(info, FUNC1(1));
				if (FUNC7(jiffies, timeout)) {
					FUNC3(info->dev, "TX timeout\n");
					break;
				}
			} while (!(v & (AC97SR_TXFE | AC97SR_TXUE)));

			/* disable the TX FIFO */
			FUNC5(info, FUNC2(1), 0);
		} else {
			/* disable the RX FIFO */
			FUNC5(info, FUNC0(1), 0);
		}
		break;

	default:
		FUNC3(info->dev, "unknown command %d\n", cmd);
		return -EINVAL;
	}

	return 0;
}