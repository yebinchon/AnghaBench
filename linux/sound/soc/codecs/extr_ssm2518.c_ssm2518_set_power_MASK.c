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
struct ssm2518 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  enable_gpio; } ;

/* Variables and functions */
 int SSM2518_POWER1_RESET ; 
 int SSM2518_POWER1_SPWDN ; 
 int /*<<< orphan*/  SSM2518_REG_POWER1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct ssm2518 *ssm2518, bool enable)
{
	int ret = 0;

	if (!enable) {
		ret = FUNC5(ssm2518->regmap, SSM2518_REG_POWER1,
			SSM2518_POWER1_SPWDN, SSM2518_POWER1_SPWDN);
		FUNC3(ssm2518->regmap);
	}

	if (FUNC0(ssm2518->enable_gpio))
		FUNC1(ssm2518->enable_gpio, enable);

	FUNC2(ssm2518->regmap, !enable);

	if (enable) {
		ret = FUNC5(ssm2518->regmap, SSM2518_REG_POWER1,
			SSM2518_POWER1_SPWDN | SSM2518_POWER1_RESET, 0x00);
		FUNC4(ssm2518->regmap);
	}

	return ret;
}