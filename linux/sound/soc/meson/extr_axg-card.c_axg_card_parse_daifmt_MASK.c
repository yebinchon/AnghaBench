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

/* Variables and functions */
 int /*<<< orphan*/  PREFIX ; 
 unsigned int SND_SOC_DAIFMT_CBM_CFM ; 
 unsigned int SND_SOC_DAIFMT_CBM_CFS ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFM ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 unsigned int FUNC1 (struct device_node*,int /*<<< orphan*/ ,struct device_node**,struct device_node**) ; 

__attribute__((used)) static unsigned int FUNC2(struct device_node *node,
					  struct device_node *cpu_node)
{
	struct device_node *bitclkmaster = NULL;
	struct device_node *framemaster = NULL;
	unsigned int daifmt;

	daifmt = FUNC1(node, PREFIX,
					 &bitclkmaster, &framemaster);
	daifmt &= ~SND_SOC_DAIFMT_MASTER_MASK;

	/* If no master is provided, default to cpu master */
	if (!bitclkmaster || bitclkmaster == cpu_node) {
		daifmt |= (!framemaster || framemaster == cpu_node) ?
			SND_SOC_DAIFMT_CBS_CFS : SND_SOC_DAIFMT_CBS_CFM;
	} else {
		daifmt |= (!framemaster || framemaster == cpu_node) ?
			SND_SOC_DAIFMT_CBM_CFS : SND_SOC_DAIFMT_CBM_CFM;
	}

	FUNC0(bitclkmaster);
	FUNC0(framemaster);

	return daifmt;
}