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
struct aic31xx_priv {int /*<<< orphan*/  regmap; scalar_t__ gpio_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC31XX_RESET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct aic31xx_priv *aic31xx)
{
	int ret = 0;

	if (aic31xx->gpio_reset) {
		FUNC0(aic31xx->gpio_reset, 1);
		FUNC2(10); /* At least 10ns */
		FUNC0(aic31xx->gpio_reset, 0);
	} else {
		ret = FUNC3(aic31xx->regmap, AIC31XX_RESET, 1);
	}
	FUNC1(1); /* At least 1ms */

	return ret;
}