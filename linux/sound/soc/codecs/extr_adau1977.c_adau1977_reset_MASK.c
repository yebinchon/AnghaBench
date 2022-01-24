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
struct adau1977 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1977_POWER_RESET ; 
 int /*<<< orphan*/  ADAU1977_REG_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct adau1977 *adau1977)
{
	int ret;

	/*
	 * The reset bit is obviously volatile, but we need to be able to cache
	 * the other bits in the register, so we can't just mark the whole
	 * register as volatile. Since this is the only place where we'll ever
	 * touch the reset bit just bypass the cache for this operation.
	 */
	FUNC0(adau1977->regmap, true);
	ret = FUNC1(adau1977->regmap, ADAU1977_REG_POWER,
			ADAU1977_POWER_RESET);
	FUNC0(adau1977->regmap, false);
	if (ret)
		return ret;

	return ret;
}