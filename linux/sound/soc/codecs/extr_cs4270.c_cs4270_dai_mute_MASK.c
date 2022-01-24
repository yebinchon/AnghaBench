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
struct cs4270_private {int manual_mute; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4270_MUTE ; 
 int CS4270_MUTE_DAC_A ; 
 int CS4270_MUTE_DAC_B ; 
 struct cs4270_private* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;
	struct cs4270_private *cs4270 = FUNC0(component);
	int reg6;

	reg6 = FUNC1(component, CS4270_MUTE);

	if (mute)
		reg6 |= CS4270_MUTE_DAC_A | CS4270_MUTE_DAC_B;
	else {
		reg6 &= ~(CS4270_MUTE_DAC_A | CS4270_MUTE_DAC_B);
		reg6 |= cs4270->manual_mute;
	}

	return FUNC2(component, CS4270_MUTE, reg6);
}