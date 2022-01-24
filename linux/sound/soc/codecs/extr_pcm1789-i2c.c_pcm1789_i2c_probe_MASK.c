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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  pcm1789_regmap_config ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct regmap *regmap;
	int ret;

	regmap = FUNC3(client, &pcm1789_regmap_config);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		FUNC2(&client->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	return FUNC4(&client->dev, regmap);
}