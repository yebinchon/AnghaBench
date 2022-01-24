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
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int SND_SOC_DAIFMT_CBM_CFM ; 
 unsigned int SND_SOC_DAIFMT_CBM_CFS ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFM ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_CLOCK_MASK ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 unsigned int FUNC2 (struct device_node*,char*,struct device_node**,struct device_node**) ; 

int FUNC3(struct device *dev,
			     struct device_node *node,
			     struct device_node *codec,
			     char *prefix,
			     unsigned int *retfmt)
{
	struct device_node *bitclkmaster = NULL;
	struct device_node *framemaster = NULL;
	unsigned int daifmt;

	daifmt = FUNC2(node, prefix,
					 &bitclkmaster, &framemaster);
	daifmt &= ~SND_SOC_DAIFMT_MASTER_MASK;

	if (!bitclkmaster && !framemaster) {
		/*
		 * No dai-link level and master setting was not found from
		 * sound node level, revert back to legacy DT parsing and
		 * take the settings from codec node.
		 */
		FUNC0(dev, "Revert to legacy daifmt parsing\n");

		daifmt = FUNC2(codec, NULL, NULL, NULL) |
			(daifmt & ~SND_SOC_DAIFMT_CLOCK_MASK);
	} else {
		if (codec == bitclkmaster)
			daifmt |= (codec == framemaster) ?
				SND_SOC_DAIFMT_CBM_CFM : SND_SOC_DAIFMT_CBM_CFS;
		else
			daifmt |= (codec == framemaster) ?
				SND_SOC_DAIFMT_CBS_CFM : SND_SOC_DAIFMT_CBS_CFS;
	}

	FUNC1(bitclkmaster);
	FUNC1(framemaster);

	*retfmt = daifmt;

	return 0;
}