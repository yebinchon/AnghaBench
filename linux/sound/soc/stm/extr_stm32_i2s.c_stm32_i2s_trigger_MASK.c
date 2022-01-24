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
typedef  unsigned int u32 ;
struct stm32_i2s_data {int refcount; int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock_fd; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int I2S_CFG1_RXDMAEN ; 
 unsigned int I2S_CFG1_TXDMAEN ; 
 int /*<<< orphan*/  I2S_CR1_CSTART ; 
 unsigned int I2S_CR1_SPE ; 
 unsigned int I2S_IER_OVRIE ; 
 unsigned int I2S_IER_TIFREIE ; 
 unsigned int I2S_IER_UDRIE ; 
 int /*<<< orphan*/  I2S_IFCR_MASK ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  STM32_I2S_CFG1_REG ; 
 int /*<<< orphan*/  STM32_I2S_CR1_REG ; 
 int /*<<< orphan*/  STM32_I2S_IER_REG ; 
 int /*<<< orphan*/  STM32_I2S_IFCR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_i2s_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_i2s_data*) ; 
 int /*<<< orphan*/  STM32_I2S_TXDR_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_i2s_data* FUNC7 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream, int cmd,
			     struct snd_soc_dai *cpu_dai)
{
	struct stm32_i2s_data *i2s = FUNC7(cpu_dai);
	bool playback_flg = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	u32 cfg1_mask, ier;
	int ret;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		/* Enable i2s */
		FUNC2(cpu_dai->dev, "start I2S %s\n",
			playback_flg ? "playback" : "capture");

		cfg1_mask = I2S_CFG1_RXDMAEN | I2S_CFG1_TXDMAEN;
		FUNC4(i2s->regmap, STM32_I2S_CFG1_REG,
				   cfg1_mask, cfg1_mask);

		ret = FUNC4(i2s->regmap, STM32_I2S_CR1_REG,
					 I2S_CR1_SPE, I2S_CR1_SPE);
		if (ret < 0) {
			FUNC3(cpu_dai->dev, "Error %d enabling I2S\n", ret);
			return ret;
		}

		ret = FUNC6(i2s->regmap, STM32_I2S_CR1_REG,
					I2S_CR1_CSTART, I2S_CR1_CSTART);
		if (ret < 0) {
			FUNC3(cpu_dai->dev, "Error %d starting I2S\n", ret);
			return ret;
		}

		FUNC6(i2s->regmap, STM32_I2S_IFCR_REG,
				  I2S_IFCR_MASK, I2S_IFCR_MASK);

		FUNC8(&i2s->lock_fd);
		i2s->refcount++;
		if (playback_flg) {
			ier = I2S_IER_UDRIE;
		} else {
			ier = I2S_IER_OVRIE;

			if (FUNC0(i2s) && i2s->refcount == 1)
				/* dummy write to gate bus clocks */
				FUNC5(i2s->regmap,
					     STM32_I2S_TXDR_REG, 0);
		}
		FUNC9(&i2s->lock_fd);

		if (FUNC1(i2s))
			ier |= I2S_IER_TIFREIE;

		FUNC4(i2s->regmap, STM32_I2S_IER_REG, ier, ier);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC2(cpu_dai->dev, "stop I2S %s\n",
			playback_flg ? "playback" : "capture");

		if (playback_flg)
			FUNC4(i2s->regmap, STM32_I2S_IER_REG,
					   I2S_IER_UDRIE,
					   (unsigned int)~I2S_IER_UDRIE);
		else
			FUNC4(i2s->regmap, STM32_I2S_IER_REG,
					   I2S_IER_OVRIE,
					   (unsigned int)~I2S_IER_OVRIE);

		FUNC8(&i2s->lock_fd);
		i2s->refcount--;
		if (i2s->refcount) {
			FUNC9(&i2s->lock_fd);
			break;
		}

		ret = FUNC4(i2s->regmap, STM32_I2S_CR1_REG,
					 I2S_CR1_SPE, 0);
		if (ret < 0) {
			FUNC3(cpu_dai->dev, "Error %d disabling I2S\n", ret);
			FUNC9(&i2s->lock_fd);
			return ret;
		}
		FUNC9(&i2s->lock_fd);

		cfg1_mask = I2S_CFG1_RXDMAEN | I2S_CFG1_TXDMAEN;
		FUNC4(i2s->regmap, STM32_I2S_CFG1_REG,
				   cfg1_mask, 0);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}