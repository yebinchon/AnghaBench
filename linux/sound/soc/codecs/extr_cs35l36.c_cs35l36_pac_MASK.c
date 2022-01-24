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
struct cs35l36_private {scalar_t__ rev_id; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int CS35L36_B0_PAC_PATCH ; 
 int /*<<< orphan*/  CS35L36_INT4_STATUS ; 
 unsigned int CS35L36_MCU_CONFIG_CLR ; 
 int /*<<< orphan*/  CS35L36_PAC_CTL1 ; 
 int /*<<< orphan*/  CS35L36_PAC_CTL3 ; 
 unsigned int CS35L36_PAC_ENABLE_MASK ; 
 unsigned int CS35L36_PAC_MEM_ACCESS ; 
 unsigned int CS35L36_PAC_MEM_ACCESS_CLR ; 
 int /*<<< orphan*/  CS35L36_PAC_PMEM_WORD0 ; 
 unsigned int CS35L36_PAC_RESET ; 
 scalar_t__ CS35L36_REV_B0 ; 
 int /*<<< orphan*/  CS35L36_TESTKEY_CTRL ; 
 unsigned int CS35L36_TEST_LOCK1 ; 
 unsigned int CS35L36_TEST_LOCK2 ; 
 unsigned int CS35L36_TEST_UNLOCK1 ; 
 unsigned int CS35L36_TEST_UNLOCK2 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct cs35l36_private *cs35l36)
{
	int ret, count;
	unsigned int val;

	if (cs35l36->rev_id != CS35L36_REV_B0)
		return 0;

	/*
	 * Magic code for internal PAC
	 */
	FUNC3(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
		     CS35L36_TEST_UNLOCK1);
	FUNC3(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
		     CS35L36_TEST_UNLOCK2);

	FUNC4(9500, 10500);

	FUNC3(cs35l36->regmap, CS35L36_PAC_CTL1,
		     CS35L36_PAC_RESET);
	FUNC3(cs35l36->regmap, CS35L36_PAC_CTL3,
		     CS35L36_PAC_MEM_ACCESS);
	FUNC3(cs35l36->regmap, CS35L36_PAC_PMEM_WORD0,
		     CS35L36_B0_PAC_PATCH);

	FUNC3(cs35l36->regmap, CS35L36_PAC_CTL3,
		     CS35L36_PAC_MEM_ACCESS_CLR);
	FUNC3(cs35l36->regmap, CS35L36_PAC_CTL1,
		     CS35L36_PAC_ENABLE_MASK);

	FUNC4(9500, 10500);

	ret = FUNC1(cs35l36->regmap, CS35L36_INT4_STATUS, &val);
	if (ret < 0) {
		FUNC0(cs35l36->dev, "Failed to read int4_status %d\n", ret);
		return ret;
	}

	count = 0;
	while (!(val & CS35L36_MCU_CONFIG_CLR)) {
		FUNC4(100, 200);
		count++;

		ret = FUNC1(cs35l36->regmap, CS35L36_INT4_STATUS,
				  &val);
		if (ret < 0) {
			FUNC0(cs35l36->dev, "Failed to read int4_status %d\n",
				ret);
			return ret;
		}

		if (count >= 100)
			return -EINVAL;
	}

	FUNC3(cs35l36->regmap, CS35L36_INT4_STATUS,
		     CS35L36_MCU_CONFIG_CLR);
	FUNC2(cs35l36->regmap, CS35L36_PAC_CTL1,
			   CS35L36_PAC_ENABLE_MASK, 0);

	FUNC3(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
		     CS35L36_TEST_LOCK1);
	FUNC3(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
		     CS35L36_TEST_LOCK2);

	return 0;
}