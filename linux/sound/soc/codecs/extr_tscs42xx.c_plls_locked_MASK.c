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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_PLL_LOCK_20MS_WAITS ; 
 int /*<<< orphan*/  R_PLLCTL0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct snd_soc_component *component)
{
	int ret;
	int count = MAX_PLL_LOCK_20MS_WAITS;

	do {
		ret = FUNC2(component, R_PLLCTL0);
		if (ret < 0) {
			FUNC0(component->dev,
				"Failed to read PLL lock status (%d)\n", ret);
			return false;
		} else if (ret > 0) {
			return true;
		}
		FUNC1(20);
	} while (count--);

	return false;
}