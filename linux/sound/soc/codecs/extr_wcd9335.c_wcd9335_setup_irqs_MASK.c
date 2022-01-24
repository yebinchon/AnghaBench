#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wcd9335_codec {int /*<<< orphan*/  if_regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  handler; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int WCD9335_SLIM_NUM_PORT_REG ; 
 scalar_t__ WCD9335_SLIM_PGD_PORT_INT_EN0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct wcd9335_codec*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_1__* wcd9335_irqs ; 

__attribute__((used)) static int FUNC5(struct wcd9335_codec *wcd)
{
	int irq, ret, i;

	for (i = 0; i < FUNC0(wcd9335_irqs); i++) {
		irq = FUNC3(wcd->irq_data, wcd9335_irqs[i].irq);
		if (irq < 0) {
			FUNC1(wcd->dev, "Failed to get %s\n",
					wcd9335_irqs[i].name);
			return irq;
		}

		ret = FUNC2(wcd->dev, irq, NULL,
						wcd9335_irqs[i].handler,
						IRQF_TRIGGER_RISING |
						IRQF_ONESHOT,
						wcd9335_irqs[i].name, wcd);
		if (ret) {
			FUNC1(wcd->dev, "Failed to request %s\n",
					wcd9335_irqs[i].name);
			return ret;
		}
	}

	/* enable interrupts on all slave ports */
	for (i = 0; i < WCD9335_SLIM_NUM_PORT_REG; i++)
		FUNC4(wcd->if_regmap, WCD9335_SLIM_PGD_PORT_INT_EN0 + i,
			     0xFF);

	return ret;
}