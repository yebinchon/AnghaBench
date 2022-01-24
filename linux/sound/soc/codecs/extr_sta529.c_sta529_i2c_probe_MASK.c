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
struct sta529 {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct sta529* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct sta529*) ; 
 int /*<<< orphan*/  sta529_component_driver ; 
 int /*<<< orphan*/  sta529_dai ; 
 int /*<<< orphan*/  sta529_regmap ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct sta529 *sta529;
	int ret;

	sta529 = FUNC3(&i2c->dev, sizeof(struct sta529), GFP_KERNEL);
	if (!sta529)
		return -ENOMEM;

	sta529->regmap = FUNC4(i2c, &sta529_regmap);
	if (FUNC0(sta529->regmap)) {
		ret = FUNC1(sta529->regmap);
		FUNC2(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	FUNC6(i2c, sta529);

	ret = FUNC5(&i2c->dev,
			&sta529_component_driver, &sta529_dai, 1);
	if (ret != 0)
		FUNC2(&i2c->dev, "Failed to register CODEC: %d\n", ret);

	return ret;
}