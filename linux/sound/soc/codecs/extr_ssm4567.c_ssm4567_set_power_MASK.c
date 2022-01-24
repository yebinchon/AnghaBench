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
struct ssm4567 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int SSM4567_POWER_SPWDN ; 
 int /*<<< orphan*/  SSM4567_REG_POWER_CTRL ; 
 int /*<<< orphan*/  SSM4567_REG_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ssm4567 *ssm4567, bool enable)
{
	int ret = 0;

	if (!enable) {
		ret = FUNC3(ssm4567->regmap,
			SSM4567_REG_POWER_CTRL,
			SSM4567_POWER_SPWDN, SSM4567_POWER_SPWDN);
		FUNC1(ssm4567->regmap);
	}

	FUNC0(ssm4567->regmap, !enable);

	if (enable) {
		ret = FUNC4(ssm4567->regmap, SSM4567_REG_SOFT_RESET,
			0x00);
		if (ret)
			return ret;

		ret = FUNC3(ssm4567->regmap,
			SSM4567_REG_POWER_CTRL,
			SSM4567_POWER_SPWDN, 0x00);
		FUNC2(ssm4567->regmap);
	}

	return ret;
}