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
struct regmap_config {int read_flag_mask; int write_flag_mask; } ;
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct i2c_client*,struct regmap_config*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct regmap*) ; 
 struct regmap_config pcm512x_regmap ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct regmap *regmap;
	struct regmap_config config = pcm512x_regmap;

	/* msb needs to be set to enable auto-increment of addresses */
	config.read_flag_mask = 0x80;
	config.write_flag_mask = 0x80;

	regmap = FUNC2(i2c, &config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC3(&i2c->dev, regmap);
}