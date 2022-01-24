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
typedef  int /*<<< orphan*/  u8 ;
struct tas2552_data {int /*<<< orphan*/  tdm_delay; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TAS2552_CFG_3 ; 
 int /*<<< orphan*/  TAS2552_CLKSPERFRAME_128 ; 
 int /*<<< orphan*/  TAS2552_CLKSPERFRAME_256 ; 
 int /*<<< orphan*/  TAS2552_CLKSPERFRAME_32 ; 
 int /*<<< orphan*/  TAS2552_CLKSPERFRAME_64 ; 
 int TAS2552_CLKSPERFRAME_MASK ; 
 int /*<<< orphan*/  TAS2552_SER_CTRL_1 ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_11_12KHZ ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_16KHZ ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_176_192KHZ ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_22_24KHZ ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_32KHZ ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_44_48KHZ ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_88_96KHZ ; 
 int /*<<< orphan*/  TAS2552_WCLK_FREQ_8KHZ ; 
 int TAS2552_WCLK_FREQ_MASK ; 
 int /*<<< orphan*/  TAS2552_WORDLENGTH_16BIT ; 
 int /*<<< orphan*/  TAS2552_WORDLENGTH_20BIT ; 
 int /*<<< orphan*/  TAS2552_WORDLENGTH_24BIT ; 
 int /*<<< orphan*/  TAS2552_WORDLENGTH_32BIT ; 
 int TAS2552_WORDLENGTH_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct tas2552_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_component*,struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct tas2552_data *tas2552 = FUNC1(component->dev);
	int cpf;
	u8 ser_ctrl1_reg, wclk_rate;

	switch (FUNC3(params)) {
	case 16:
		ser_ctrl1_reg = TAS2552_WORDLENGTH_16BIT;
		cpf = 32 + tas2552->tdm_delay;
		break;
	case 20:
		ser_ctrl1_reg = TAS2552_WORDLENGTH_20BIT;
		cpf = 64 + tas2552->tdm_delay;
		break;
	case 24:
		ser_ctrl1_reg = TAS2552_WORDLENGTH_24BIT;
		cpf = 64 + tas2552->tdm_delay;
		break;
	case 32:
		ser_ctrl1_reg = TAS2552_WORDLENGTH_32BIT;
		cpf = 64 + tas2552->tdm_delay;
		break;
	default:
		FUNC0(component->dev, "Not supported sample size: %d\n",
			FUNC3(params));
		return -EINVAL;
	}

	if (cpf <= 32)
		ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_32;
	else if (cpf <= 64)
		ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_64;
	else if (cpf <= 128)
		ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_128;
	else
		ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_256;

	FUNC4(component, TAS2552_SER_CTRL_1,
			    TAS2552_WORDLENGTH_MASK | TAS2552_CLKSPERFRAME_MASK,
			    ser_ctrl1_reg);

	switch (FUNC2(params)) {
	case 8000:
		wclk_rate = TAS2552_WCLK_FREQ_8KHZ;
		break;
	case 11025:
	case 12000:
		wclk_rate = TAS2552_WCLK_FREQ_11_12KHZ;
		break;
	case 16000:
		wclk_rate = TAS2552_WCLK_FREQ_16KHZ;
		break;
	case 22050:
	case 24000:
		wclk_rate = TAS2552_WCLK_FREQ_22_24KHZ;
		break;
	case 32000:
		wclk_rate = TAS2552_WCLK_FREQ_32KHZ;
		break;
	case 44100:
	case 48000:
		wclk_rate = TAS2552_WCLK_FREQ_44_48KHZ;
		break;
	case 88200:
	case 96000:
		wclk_rate = TAS2552_WCLK_FREQ_88_96KHZ;
		break;
	case 176400:
	case 192000:
		wclk_rate = TAS2552_WCLK_FREQ_176_192KHZ;
		break;
	default:
		FUNC0(component->dev, "Not supported sample rate: %d\n",
			FUNC2(params));
		return -EINVAL;
	}

	FUNC4(component, TAS2552_CFG_3, TAS2552_WCLK_FREQ_MASK,
			    wclk_rate);

	return FUNC5(component, params);
}