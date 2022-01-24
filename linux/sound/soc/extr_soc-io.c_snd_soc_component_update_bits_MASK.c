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
struct snd_soc_component {scalar_t__ regmap; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,unsigned int,unsigned int,unsigned int,int*) ; 
 int FUNC1 (struct snd_soc_component*,unsigned int,unsigned int,unsigned int,int*) ; 

int FUNC2(struct snd_soc_component *component,
	unsigned int reg, unsigned int mask, unsigned int val)
{
	bool change;
	int ret;

	if (component->regmap)
		ret = FUNC0(component->regmap, reg, mask,
			val, &change);
	else
		ret = FUNC1(component, reg,
			mask, val, &change);

	if (ret < 0)
		return ret;
	return change;
}