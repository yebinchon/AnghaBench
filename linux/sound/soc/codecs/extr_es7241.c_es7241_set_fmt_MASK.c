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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct es7241_data {unsigned int fmt; int is_slave; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 129 
#define  SND_SOC_DAIFMT_CBS_CFS 128 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 unsigned int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct es7241_data* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct es7241_data *priv = FUNC1(dai);

	if ((fmt & SND_SOC_DAIFMT_INV_MASK) != SND_SOC_DAIFMT_NB_NF) {
		FUNC0(dai->dev, "Unsupported dai clock inversion\n");
		return -EINVAL;
	}

	if ((fmt & SND_SOC_DAIFMT_FORMAT_MASK) != priv->fmt) {
		FUNC0(dai->dev, "Invalid dai format\n");
		return -EINVAL;
	}

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBS_CFS:
		priv->is_slave = true;
		break;
	case SND_SOC_DAIFMT_CBM_CFM:
		priv->is_slave = false;
		break;

	default:
		FUNC0(dai->dev, "Unsupported clock configuration\n");
		return -EINVAL;
	}

	return 0;
}