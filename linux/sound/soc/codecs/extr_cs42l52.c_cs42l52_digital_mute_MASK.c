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

/* Variables and functions */
 int /*<<< orphan*/  CS42L52_PB_CTL1 ; 
 int /*<<< orphan*/  CS42L52_PB_CTL1_MUTE ; 
 int /*<<< orphan*/  CS42L52_PB_CTL1_MUTE_MASK ; 
 int /*<<< orphan*/  CS42L52_PB_CTL1_UNMUTE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;

	if (mute)
		FUNC0(component, CS42L52_PB_CTL1,
				    CS42L52_PB_CTL1_MUTE_MASK,
				CS42L52_PB_CTL1_MUTE);
	else
		FUNC0(component, CS42L52_PB_CTL1,
				    CS42L52_PB_CTL1_MUTE_MASK,
				CS42L52_PB_CTL1_UNMUTE);

	return 0;
}