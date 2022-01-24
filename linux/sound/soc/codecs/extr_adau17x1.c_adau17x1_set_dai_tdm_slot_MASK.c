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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct adau {int* tdm_slot; int /*<<< orphan*/  regmap; scalar_t__* dsp_bypass; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1361 ; 
 int /*<<< orphan*/  ADAU1761 ; 
 int /*<<< orphan*/  ADAU17X1_CONVERTER0 ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  ADAU17X1_CONVERTER0_DAC_PAIR_MASK ; 
 int /*<<< orphan*/  ADAU17X1_CONVERTER1 ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  ADAU17X1_CONVERTER1_ADC_PAIR_MASK ; 
 int /*<<< orphan*/  ADAU17X1_SERIAL_INPUT_ROUTE ; 
 int /*<<< orphan*/  ADAU17X1_SERIAL_OUTPUT_ROUTE ; 
 int /*<<< orphan*/  ADAU17X1_SERIAL_PORT0 ; 
 unsigned int ADAU17X1_SERIAL_PORT0_STEREO ; 
 unsigned int ADAU17X1_SERIAL_PORT0_TDM4 ; 
 unsigned int ADAU17X1_SERIAL_PORT0_TDM8 ; 
 int /*<<< orphan*/  ADAU17X1_SERIAL_PORT0_TDM_MASK ; 
 int /*<<< orphan*/  ADAU17X1_SERIAL_PORT1 ; 
 unsigned int ADAU17X1_SERIAL_PORT1_BCLK128 ; 
 unsigned int ADAU17X1_SERIAL_PORT1_BCLK256 ; 
 unsigned int ADAU17X1_SERIAL_PORT1_BCLK32 ; 
 unsigned int ADAU17X1_SERIAL_PORT1_BCLK48 ; 
 unsigned int ADAU17X1_SERIAL_PORT1_BCLK64 ; 
 int /*<<< orphan*/  ADAU17X1_SERIAL_PORT1_BCLK_MASK ; 
 int EINVAL ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC2 (struct adau*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct adau* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai,
	unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width)
{
	struct adau *adau = FUNC5(dai->component);
	unsigned int ser_ctrl0, ser_ctrl1;
	unsigned int conv_ctrl0, conv_ctrl1;

	/* I2S mode */
	if (slots == 0) {
		slots = 2;
		rx_mask = 3;
		tx_mask = 3;
		slot_width = 32;
	}

	switch (slots) {
	case 2:
		ser_ctrl0 = ADAU17X1_SERIAL_PORT0_STEREO;
		break;
	case 4:
		ser_ctrl0 = ADAU17X1_SERIAL_PORT0_TDM4;
		break;
	case 8:
		if (adau->type == ADAU1361)
			return -EINVAL;

		ser_ctrl0 = ADAU17X1_SERIAL_PORT0_TDM8;
		break;
	default:
		return -EINVAL;
	}

	switch (slot_width * slots) {
	case 32:
		if (adau->type == ADAU1761)
			return -EINVAL;

		ser_ctrl1 = ADAU17X1_SERIAL_PORT1_BCLK32;
		break;
	case 64:
		ser_ctrl1 = ADAU17X1_SERIAL_PORT1_BCLK64;
		break;
	case 48:
		ser_ctrl1 = ADAU17X1_SERIAL_PORT1_BCLK48;
		break;
	case 128:
		ser_ctrl1 = ADAU17X1_SERIAL_PORT1_BCLK128;
		break;
	case 256:
		if (adau->type == ADAU1361)
			return -EINVAL;

		ser_ctrl1 = ADAU17X1_SERIAL_PORT1_BCLK256;
		break;
	default:
		return -EINVAL;
	}

	switch (rx_mask) {
	case 0x03:
		conv_ctrl1 = FUNC1(1);
		adau->tdm_slot[SNDRV_PCM_STREAM_CAPTURE] = 0;
		break;
	case 0x0c:
		conv_ctrl1 = FUNC1(2);
		adau->tdm_slot[SNDRV_PCM_STREAM_CAPTURE] = 1;
		break;
	case 0x30:
		conv_ctrl1 = FUNC1(3);
		adau->tdm_slot[SNDRV_PCM_STREAM_CAPTURE] = 2;
		break;
	case 0xc0:
		conv_ctrl1 = FUNC1(4);
		adau->tdm_slot[SNDRV_PCM_STREAM_CAPTURE] = 3;
		break;
	default:
		return -EINVAL;
	}

	switch (tx_mask) {
	case 0x03:
		conv_ctrl0 = FUNC0(1);
		adau->tdm_slot[SNDRV_PCM_STREAM_PLAYBACK] = 0;
		break;
	case 0x0c:
		conv_ctrl0 = FUNC0(2);
		adau->tdm_slot[SNDRV_PCM_STREAM_PLAYBACK] = 1;
		break;
	case 0x30:
		conv_ctrl0 = FUNC0(3);
		adau->tdm_slot[SNDRV_PCM_STREAM_PLAYBACK] = 2;
		break;
	case 0xc0:
		conv_ctrl0 = FUNC0(4);
		adau->tdm_slot[SNDRV_PCM_STREAM_PLAYBACK] = 3;
		break;
	default:
		return -EINVAL;
	}

	FUNC3(adau->regmap, ADAU17X1_CONVERTER0,
		ADAU17X1_CONVERTER0_DAC_PAIR_MASK, conv_ctrl0);
	FUNC3(adau->regmap, ADAU17X1_CONVERTER1,
		ADAU17X1_CONVERTER1_ADC_PAIR_MASK, conv_ctrl1);
	FUNC3(adau->regmap, ADAU17X1_SERIAL_PORT0,
		ADAU17X1_SERIAL_PORT0_TDM_MASK, ser_ctrl0);
	FUNC3(adau->regmap, ADAU17X1_SERIAL_PORT1,
		ADAU17X1_SERIAL_PORT1_BCLK_MASK, ser_ctrl1);

	if (!FUNC2(adau))
		return 0;

	if (adau->dsp_bypass[SNDRV_PCM_STREAM_PLAYBACK]) {
		FUNC4(adau->regmap, ADAU17X1_SERIAL_INPUT_ROUTE,
			(adau->tdm_slot[SNDRV_PCM_STREAM_PLAYBACK] * 2) + 1);
	}

	if (adau->dsp_bypass[SNDRV_PCM_STREAM_CAPTURE]) {
		FUNC4(adau->regmap, ADAU17X1_SERIAL_OUTPUT_ROUTE,
			(adau->tdm_slot[SNDRV_PCM_STREAM_CAPTURE] * 2) + 1);
	}

	return 0;
}