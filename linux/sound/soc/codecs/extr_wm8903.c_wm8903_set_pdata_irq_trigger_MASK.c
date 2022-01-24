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
struct wm8903_platform_data {int irq_active_low; } ;
struct irq_data {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IRQ_TYPE_LEVEL_HIGH 130 
#define  IRQ_TYPE_LEVEL_LOW 129 
#define  IRQ_TYPE_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct irq_data*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c,
					struct wm8903_platform_data *pdata)
{
	struct irq_data *irq_data = FUNC1(i2c->irq);
	if (!irq_data) {
		FUNC0(&i2c->dev, "Invalid IRQ: %d\n",
			i2c->irq);
		return -EINVAL;
	}

	switch (FUNC2(irq_data)) {
	case IRQ_TYPE_NONE:
	default:
		/*
		* We assume the controller imposes no restrictions,
		* so we are able to select active-high
		*/
		/* Fall-through */
	case IRQ_TYPE_LEVEL_HIGH:
		pdata->irq_active_low = false;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		pdata->irq_active_low = true;
		break;
	}

	return 0;
}