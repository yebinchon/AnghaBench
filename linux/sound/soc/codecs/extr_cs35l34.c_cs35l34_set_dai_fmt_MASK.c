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
struct cs35l34_private {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L34_ADSP_CLK_CTL ; 
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 129 
#define  SND_SOC_DAIFMT_CBS_CFS 128 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct cs35l34_private* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
	struct snd_soc_component *component = codec_dai->component;
	struct cs35l34_private *priv = FUNC1(component);

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBM_CFM:
		FUNC0(priv->regmap, CS35L34_ADSP_CLK_CTL,
				    0x80, 0x80);
		break;
	case SND_SOC_DAIFMT_CBS_CFS:
		FUNC0(priv->regmap, CS35L34_ADSP_CLK_CTL,
				    0x80, 0x00);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}