#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct max98088_priv {int /*<<< orphan*/  pdata; int /*<<< orphan*/  devtype; int /*<<< orphan*/  mclk; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct max98088_priv* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct max98088_priv*) ; 
 int /*<<< orphan*/ * max98088_dai ; 
 int /*<<< orphan*/  max98088_regmap ; 
 int /*<<< orphan*/  soc_component_dev_max98088 ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
       struct max98088_priv *max98088;
       int ret;

       max98088 = FUNC3(&i2c->dev, sizeof(struct max98088_priv),
			       GFP_KERNEL);
       if (max98088 == NULL)
               return -ENOMEM;

       max98088->regmap = FUNC4(i2c, &max98088_regmap);
       if (FUNC0(max98088->regmap))
	       return FUNC1(max98088->regmap);

	max98088->mclk = FUNC2(&i2c->dev, "mclk");
	if (FUNC0(max98088->mclk))
		if (FUNC1(max98088->mclk) == -EPROBE_DEFER)
			return FUNC1(max98088->mclk);

       max98088->devtype = id->driver_data;

       FUNC6(i2c, max98088);
       max98088->pdata = i2c->dev.platform_data;

       ret = FUNC5(&i2c->dev,
                       &soc_component_dev_max98088, &max98088_dai[0], 2);
       return ret;
}