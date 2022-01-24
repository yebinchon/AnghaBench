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
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  def; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 struct regmap* FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max9877_component_driver ; 
 int /*<<< orphan*/  max9877_regmap ; 
 TYPE_1__* max9877_regs ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct regmap *regmap;
	int i;

	regmap = FUNC3(client, &max9877_regmap);
	if (FUNC1(regmap))
		return FUNC2(regmap);

	/* Ensure the device is in reset state */
	for (i = 0; i < FUNC0(max9877_regs); i++)
		FUNC5(regmap, max9877_regs[i].reg, max9877_regs[i].def);

	return FUNC4(&client->dev,
			&max9877_component_driver, NULL, 0);
}