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
struct snd_soc_component {int dummy; } ;
struct cs4271_private {int /*<<< orphan*/  regmap; scalar_t__ rate; scalar_t__ deemph; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  CS4271_DACCTL ; 
 int CS4271_DACCTL_DEM_DIS ; 
 int /*<<< orphan*/  CS4271_DACCTL_DEM_MASK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__* cs4271_deemph ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cs4271_private* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct cs4271_private *cs4271 = FUNC3(component);
	int i, ret;
	int val = CS4271_DACCTL_DEM_DIS;

	if (cs4271->deemph) {
		/* Find closest de-emphasis freq */
		val = 1;
		for (i = 2; i < FUNC0(cs4271_deemph); i++)
			if (FUNC1(cs4271_deemph[i] - cs4271->rate) <
			    FUNC1(cs4271_deemph[val] - cs4271->rate))
				val = i;
		val <<= 4;
	}

	ret = FUNC2(cs4271->regmap, CS4271_DACCTL,
		CS4271_DACCTL_DEM_MASK, val);
	if (ret < 0)
		return ret;
	return 0;
}