#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct max98373_priv {int v_slot; int i_slot; int reset_gpio; int spkfb_slot; } ;
struct device {TYPE_1__* of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i2c_client *i2c,
	struct max98373_priv *max98373)
{
	int value;
	struct device *dev = &i2c->dev;

	if (!FUNC2(dev, "maxim,vmon-slot-no", &value))
		max98373->v_slot = value & 0xF;
	else
		max98373->v_slot = 0;

	if (!FUNC2(dev, "maxim,imon-slot-no", &value))
		max98373->i_slot = value & 0xF;
	else
		max98373->i_slot = 1;
	if (dev->of_node) {
		max98373->reset_gpio = FUNC4(dev->of_node,
						"maxim,reset-gpio", 0);
		if (!FUNC3(max98373->reset_gpio)) {
			FUNC1(dev, "Looking up %s property in node %s failed %d\n",
				"maxim,reset-gpio", dev->of_node->full_name,
				max98373->reset_gpio);
		} else {
			FUNC0(dev, "maxim,reset-gpio=%d",
				max98373->reset_gpio);
		}
	} else {
		/* this makes reset_gpio as invalid */
		max98373->reset_gpio = -1;
	}

	if (!FUNC2(dev, "maxim,spkfb-slot-no", &value))
		max98373->spkfb_slot = value & 0xF;
	else
		max98373->spkfb_slot = 2;
}