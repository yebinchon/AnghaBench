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
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_INTERRUPT_RAW_STATUS_3 ; 
 unsigned int ARIZONA_SPK_OVERHEAT_WARN_STS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct arizona *arizona = data;
	unsigned int val;
	int ret;

	ret = FUNC2(arizona->regmap, ARIZONA_INTERRUPT_RAW_STATUS_3,
			  &val);
	if (ret != 0) {
		FUNC1(arizona->dev, "Failed to read thermal status: %d\n",
			ret);
	} else if (val & ARIZONA_SPK_OVERHEAT_WARN_STS) {
		FUNC0(arizona->dev, "Thermal warning\n");
	}

	return IRQ_HANDLED;
}