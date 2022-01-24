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
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int regvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC5632_DAC_CLK_CTRL1 ; 
 int /*<<< orphan*/  ALC5632_DAI_CONTROL ; 
 int ALC5632_DAI_I2S_DL_16 ; 
 int ALC5632_DAI_I2S_DL_20 ; 
 int ALC5632_DAI_I2S_DL_24 ; 
 int ALC5632_DAI_I2S_DL_MASK ; 
 int EINVAL ; 
 TYPE_1__* coeff_div ; 
 int FUNC0 (struct snd_soc_component*,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	int coeff, rate;
	u16 iface;

	iface = FUNC3(component, ALC5632_DAI_CONTROL);
	iface &= ~ALC5632_DAI_I2S_DL_MASK;

	/* bit size */
	switch (FUNC2(params)) {
	case 16:
		iface |= ALC5632_DAI_I2S_DL_16;
		break;
	case 20:
		iface |= ALC5632_DAI_I2S_DL_20;
		break;
	case 24:
		iface |= ALC5632_DAI_I2S_DL_24;
		break;
	default:
		return -EINVAL;
	}

	/* set iface & srate */
	FUNC4(component, ALC5632_DAI_CONTROL, iface);
	rate = FUNC1(params);
	coeff = FUNC0(component, rate);
	if (coeff < 0)
		return -EINVAL;

	coeff = coeff_div[coeff].regvalue;
	FUNC4(component, ALC5632_DAC_CLK_CTRL1, coeff);

	return 0;
}