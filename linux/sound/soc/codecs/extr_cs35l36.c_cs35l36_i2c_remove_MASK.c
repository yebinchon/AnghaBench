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
struct i2c_client {int dummy; } ;
struct cs35l36_private {int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; scalar_t__ reset_gpio; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L36_INT1_MASK ; 
 int /*<<< orphan*/  CS35L36_INT1_MASK_RESET ; 
 int /*<<< orphan*/  CS35L36_INT3_MASK ; 
 int /*<<< orphan*/  CS35L36_INT3_MASK_RESET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct cs35l36_private* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct cs35l36_private *cs35l36 = FUNC1(client);

	/* Reset interrupt masks for device removal */
	FUNC2(cs35l36->regmap, CS35L36_INT1_MASK,
		     CS35L36_INT1_MASK_RESET);
	FUNC2(cs35l36->regmap, CS35L36_INT3_MASK,
		     CS35L36_INT3_MASK_RESET);

	if (cs35l36->reset_gpio)
		FUNC0(cs35l36->reset_gpio, 0);

	FUNC3(cs35l36->num_supplies, cs35l36->supplies);

	return 0;
}