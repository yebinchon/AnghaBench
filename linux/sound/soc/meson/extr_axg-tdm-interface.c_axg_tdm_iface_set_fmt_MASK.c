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
struct axg_tdm_iface {unsigned int fmt; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned int SND_SOC_DAIFMT_CBM_CFS ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFM ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct axg_tdm_iface* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct axg_tdm_iface *iface = FUNC1(dai);

	/* These modes are not supported */
	if (fmt & (SND_SOC_DAIFMT_CBS_CFM | SND_SOC_DAIFMT_CBM_CFS)) {
		FUNC0(dai->dev, "only CBS_CFS and CBM_CFM are supported\n");
		return -EINVAL;
	}

	/* If the TDM interface is the clock master, it requires mclk */
	if (!iface->mclk && (fmt & SND_SOC_DAIFMT_CBS_CFS)) {
		FUNC0(dai->dev, "cpu clock master: mclk missing\n");
		return -ENODEV;
	}

	iface->fmt = fmt;
	return 0;
}