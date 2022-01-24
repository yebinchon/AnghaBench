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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 struct regmap* FUNC0 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  tlv320aic23_regmap ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c,
				 const struct i2c_device_id *i2c_id)
{
	struct regmap *regmap;

	if (!FUNC1(i2c->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EINVAL;

	regmap = FUNC0(i2c, &tlv320aic23_regmap);
	return FUNC2(&i2c->dev, regmap);
}