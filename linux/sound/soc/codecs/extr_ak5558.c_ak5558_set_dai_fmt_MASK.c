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
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK5558_02_CONTROL1 ; 
 int /*<<< orphan*/  AK5558_DIF ; 
 int /*<<< orphan*/  AK5558_DIF_I2S_MODE ; 
 int /*<<< orphan*/  AK5558_DIF_MSB_MODE ; 
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 134 
#define  SND_SOC_DAIFMT_CBM_CFS 133 
#define  SND_SOC_DAIFMT_CBS_CFM 132 
#define  SND_SOC_DAIFMT_CBS_CFS 131 
#define  SND_SOC_DAIFMT_DSP_B 130 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 129 
#define  SND_SOC_DAIFMT_LEFT_J 128 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct snd_soc_component *component = dai->component;
	u8 format;

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBS_CFS:
		break;
	case SND_SOC_DAIFMT_CBM_CFM:
		break;
	case SND_SOC_DAIFMT_CBS_CFM:
	case SND_SOC_DAIFMT_CBM_CFS:
	default:
		FUNC0(dai->dev, "Clock mode unsupported");
		return -EINVAL;
	}

	/* set master/slave audio interface */
	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
		format = AK5558_DIF_I2S_MODE;
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		format = AK5558_DIF_MSB_MODE;
		break;
	case SND_SOC_DAIFMT_DSP_B:
		format = AK5558_DIF_MSB_MODE;
		break;
	default:
		return -EINVAL;
	}

	FUNC1(component, AK5558_02_CONTROL1, AK5558_DIF, format);

	return 0;
}