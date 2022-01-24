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
typedef  scalar_t__ u32 ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 scalar_t__ HP_POWER_EVENT ; 
 int /*<<< orphan*/  SGTL5000_CHIP_ANA_POWER ; 
 scalar_t__ SGTL5000_HP_SEL_LINE_IN ; 
 int SGTL5000_VAG_POWERUP ; 
 int /*<<< orphan*/  SGTL5000_VAG_POWERUP_DELAY ; 
 scalar_t__ FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component, u32 source)
{
	if (FUNC2(component, SGTL5000_CHIP_ANA_POWER) &
	    SGTL5000_VAG_POWERUP)
		return;

	FUNC3(component, SGTL5000_CHIP_ANA_POWER,
			    SGTL5000_VAG_POWERUP, SGTL5000_VAG_POWERUP);

	/* When VAG powering on to get local loop from Line-In, the sleep
	 * is required to avoid loud pop.
	 */
	if (FUNC0(component) == SGTL5000_HP_SEL_LINE_IN &&
	    source == HP_POWER_EVENT)
		FUNC1(SGTL5000_VAG_POWERUP_DELAY);
}