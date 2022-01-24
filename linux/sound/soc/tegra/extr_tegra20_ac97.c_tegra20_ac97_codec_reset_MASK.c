#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_ac97 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA20_AC97_STATUS1 ; 
 int TEGRA20_AC97_STATUS1_CODEC1_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 TYPE_1__* workdata ; 

__attribute__((used)) static void FUNC6(struct snd_ac97 *ac97)
{
	u32 readback;
	unsigned long timeout;

	/* reset line is not driven by DAC pad group, have to toggle GPIO */
	FUNC0(workdata->reset_gpio, 0);
	FUNC4(2);

	FUNC0(workdata->reset_gpio, 1);
	FUNC4(2);

	timeout = jiffies + FUNC1(100);

	do {
		FUNC2(workdata->regmap, TEGRA20_AC97_STATUS1, &readback);
		if (readback & TEGRA20_AC97_STATUS1_CODEC1_RDY)
			break;
		FUNC5(1000, 2000);
	} while (!FUNC3(jiffies, timeout));
}