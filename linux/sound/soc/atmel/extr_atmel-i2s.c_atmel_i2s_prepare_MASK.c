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
struct atmel_i2s_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_I2SC_RHR ; 
 int /*<<< orphan*/  ATMEL_I2SC_SR ; 
 unsigned int ATMEL_I2SC_SR_RXRDY ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct atmel_i2s_dev* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			     struct snd_soc_dai *dai)
{
	struct atmel_i2s_dev *dev = FUNC2(dai);
	bool is_playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	unsigned int rhr, sr = 0;

	if (is_playback) {
		FUNC1(dev->regmap, ATMEL_I2SC_SR, &sr);
		if (sr & ATMEL_I2SC_SR_RXRDY) {
			/*
			 * The RX Ready flag should not be set. However if here,
			 * we flush (read) the Receive Holding Register to start
			 * from a clean state.
			 */
			FUNC0(dev->dev, "RXRDY is set\n");
			FUNC1(dev->regmap, ATMEL_I2SC_RHR, &rhr);
		}
	}

	return 0;
}