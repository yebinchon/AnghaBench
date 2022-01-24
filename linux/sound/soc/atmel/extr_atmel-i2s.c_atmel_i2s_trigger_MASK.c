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
struct atmel_i2s_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_I2SC_CR ; 
 unsigned int ATMEL_I2SC_CR_RXDIS ; 
 unsigned int ATMEL_I2SC_CR_RXEN ; 
 unsigned int ATMEL_I2SC_CR_TXDIS ; 
 unsigned int ATMEL_I2SC_CR_TXEN ; 
 int /*<<< orphan*/  ATMEL_I2SC_MR ; 
 unsigned int ATMEL_I2SC_MR_MODE_MASK ; 
 unsigned int ATMEL_I2SC_MR_MODE_MASTER ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int FUNC0 (struct atmel_i2s_dev*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct atmel_i2s_dev* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd,
			     struct snd_soc_dai *dai)
{
	struct atmel_i2s_dev *dev = FUNC3(dai);
	bool is_playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	bool is_master, mck_enabled;
	unsigned int cr, mr;
	int err;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		cr = is_playback ? ATMEL_I2SC_CR_TXEN : ATMEL_I2SC_CR_RXEN;
		mck_enabled = true;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		cr = is_playback ? ATMEL_I2SC_CR_TXDIS : ATMEL_I2SC_CR_RXDIS;
		mck_enabled = false;
		break;
	default:
		return -EINVAL;
	}

	/* Read the Mode Register to retrieve the master/slave state. */
	err = FUNC1(dev->regmap, ATMEL_I2SC_MR, &mr);
	if (err)
		return err;
	is_master = (mr & ATMEL_I2SC_MR_MODE_MASK) == ATMEL_I2SC_MR_MODE_MASTER;

	/* If master starts, enable the audio clock. */
	if (is_master && mck_enabled)
		err = FUNC0(dev, true);
	if (err)
		return err;

	err = FUNC2(dev->regmap, ATMEL_I2SC_CR, cr);
	if (err)
		return err;

	/* If master stops, disable the audio clock. */
	if (is_master && !mck_enabled)
		err = FUNC0(dev, false);

	return err;
}