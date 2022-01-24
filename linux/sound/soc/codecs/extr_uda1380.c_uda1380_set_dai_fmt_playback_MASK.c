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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int R01_SFORI_I2S ; 
 int R01_SFORI_LSB16 ; 
 int R01_SFORI_MASK ; 
 int R01_SFORI_MSB ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LSB 129 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_MSB 128 
 int /*<<< orphan*/  UDA1380_IFACE ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
		unsigned int fmt)
{
	struct snd_soc_component *component = codec_dai->component;
	int iface;

	/* set up DAI based upon fmt */
	iface = FUNC0(component, UDA1380_IFACE);
	iface &= ~R01_SFORI_MASK;

	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
		iface |= R01_SFORI_I2S;
		break;
	case SND_SOC_DAIFMT_LSB:
		iface |= R01_SFORI_LSB16;
		break;
	case SND_SOC_DAIFMT_MSB:
		iface |= R01_SFORI_MSB;
	}

	/* DATAI is slave only, so this has to be slave */
	if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS)
		return -EINVAL;

	FUNC1(component, UDA1380_IFACE, iface);

	return 0;
}