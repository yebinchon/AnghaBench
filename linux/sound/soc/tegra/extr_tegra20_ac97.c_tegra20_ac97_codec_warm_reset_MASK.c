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
struct TYPE_2__ {int /*<<< orphan*/  regmap; int /*<<< orphan*/  sync_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA20_AC97_STATUS1 ; 
 int TEGRA20_AC97_STATUS1_CODEC1_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 TYPE_1__* workdata ; 

__attribute__((used)) static void FUNC9(struct snd_ac97 *ac97)
{
	u32 readback;
	unsigned long timeout;

	/*
	 * although sync line is driven by the DAC pad group warm reset using
	 * the controller cmd is not working, have to toggle sync line
	 * manually.
	 */
	FUNC2(workdata->sync_gpio, "codec-sync");

	FUNC0(workdata->sync_gpio, 1);

	FUNC7(2);
	FUNC3(workdata->sync_gpio, 0);
	FUNC7(2);
	FUNC1(workdata->sync_gpio);

	timeout = jiffies + FUNC4(100);

	do {
		FUNC5(workdata->regmap, TEGRA20_AC97_STATUS1, &readback);
		if (readback & TEGRA20_AC97_STATUS1_CODEC1_RDY)
			break;
		FUNC8(1000, 2000);
	} while (!FUNC6(jiffies, timeout));
}