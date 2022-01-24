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
struct ak4118_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4118_REG_FORMAT_CTL ; 
 int AK4118_REG_FORMAT_CTL_DIF0 ; 
 int AK4118_REG_FORMAT_CTL_DIF1 ; 
 int AK4118_REG_FORMAT_CTL_DIF2 ; 
 int ENOTSUPP ; 
#define  SND_SOC_DAIFMT_CBM_CFM 129 
#define  SND_SOC_DAIFMT_CBS_CFS 128 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int FUNC0 (struct ak4118_priv*,unsigned int) ; 
 int FUNC1 (struct ak4118_priv*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct ak4118_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai,
			      unsigned int format)
{
	struct snd_soc_component *component = dai->component;
	struct ak4118_priv *ak4118 = FUNC3(component);
	int dif;
	int ret = 0;

	switch (format & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBM_CFM:
		/* component is master */
		dif = FUNC0(ak4118, format);
		break;
	case SND_SOC_DAIFMT_CBS_CFS:
		/*component is slave */
		dif = FUNC1(ak4118, format);
		break;
	default:
		ret = -ENOTSUPP;
		goto exit;
	}

	/* format not supported */
	if (dif < 0) {
		ret = dif;
		goto exit;
	}

	ret = FUNC2(ak4118->regmap, AK4118_REG_FORMAT_CTL,
				 AK4118_REG_FORMAT_CTL_DIF0 |
				 AK4118_REG_FORMAT_CTL_DIF1 |
				 AK4118_REG_FORMAT_CTL_DIF2, dif);
	if (ret < 0)
		goto exit;

exit:
	return ret;
}