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
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8824_REG_CLEAR_INT_REG ; 
 int NAU8824_REG_DATA_LEN ; 
 int /*<<< orphan*/  NAU8824_REG_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct regmap *regmap)
{
	int active_irq, clear_irq, i;

	/* Reset the intrruption status from rightmost bit if the corres-
	 * ponding irq event occurs.
	 */
	FUNC0(regmap, NAU8824_REG_IRQ, &active_irq);
	for (i = 0; i < NAU8824_REG_DATA_LEN; i++) {
		clear_irq = (0x1 << i);
		if (active_irq & clear_irq)
			FUNC1(regmap,
				NAU8824_REG_CLEAR_INT_REG, clear_irq);
	}
}