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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cs43130_private {scalar_t__ xtal_ibias; int /*<<< orphan*/  supplies; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  wq; int /*<<< orphan*/  work; scalar_t__ dc_meas; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int CS43130_HP_PLUG_INT ; 
 int CS43130_HP_UNPLUG_INT ; 
 int /*<<< orphan*/  CS43130_INT_MASK_1 ; 
 int /*<<< orphan*/  CS43130_NUM_SUPPLIES ; 
 int CS43130_XTAL_ERR_INT ; 
 int CS43130_XTAL_ERR_INT_SHIFT ; 
 scalar_t__ CS43130_XTAL_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_hpload_ac_l ; 
 int /*<<< orphan*/  dev_attr_hpload_ac_r ; 
 int /*<<< orphan*/  dev_attr_hpload_dc_l ; 
 int /*<<< orphan*/  dev_attr_hpload_dc_r ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs43130_private* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct cs43130_private *cs43130 = FUNC4(client);

	if (cs43130->xtal_ibias != CS43130_XTAL_UNUSED)
		FUNC6(cs43130->regmap, CS43130_INT_MASK_1,
				   CS43130_XTAL_ERR_INT,
				   1 << CS43130_XTAL_ERR_INT_SHIFT);

	FUNC6(cs43130->regmap, CS43130_INT_MASK_1,
			   CS43130_HP_PLUG_INT | CS43130_HP_UNPLUG_INT,
			   CS43130_HP_PLUG_INT | CS43130_HP_UNPLUG_INT);

	if (cs43130->dc_meas) {
		FUNC0(&cs43130->work);
		FUNC2(cs43130->wq);

		FUNC1(&client->dev, &dev_attr_hpload_dc_l);
		FUNC1(&client->dev, &dev_attr_hpload_dc_r);
		FUNC1(&client->dev, &dev_attr_hpload_ac_l);
		FUNC1(&client->dev, &dev_attr_hpload_ac_r);
	}

	FUNC3(cs43130->reset_gpio, 0);

	FUNC5(&client->dev);
	FUNC7(CS43130_NUM_SUPPLIES, cs43130->supplies);

	return 0;
}