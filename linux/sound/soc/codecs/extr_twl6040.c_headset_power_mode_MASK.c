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

/* Variables and functions */
 int TWL6040_HSDACMODE ; 
 int TWL6040_HSDRVMODE ; 
 int /*<<< orphan*/  TWL6040_REG_HSLCTL ; 
 int /*<<< orphan*/  TWL6040_REG_HSRCTL ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component, int high_perf)
{
	int hslctl, hsrctl;
	int mask = TWL6040_HSDRVMODE | TWL6040_HSDACMODE;

	hslctl = FUNC0(component, TWL6040_REG_HSLCTL);
	hsrctl = FUNC0(component, TWL6040_REG_HSRCTL);

	if (high_perf) {
		hslctl &= ~mask;
		hsrctl &= ~mask;
	} else {
		hslctl |= mask;
		hsrctl |= mask;
	}

	FUNC1(component, TWL6040_REG_HSLCTL, hslctl);
	FUNC1(component, TWL6040_REG_HSRCTL, hsrctl);

	return 0;
}