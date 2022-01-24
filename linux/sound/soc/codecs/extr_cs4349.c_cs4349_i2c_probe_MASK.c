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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cs4349_private {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs4349_dai ; 
 int /*<<< orphan*/  cs4349_regmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct cs4349_private* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct cs4349_private*) ; 
 int /*<<< orphan*/  soc_component_dev_cs4349 ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
				      const struct i2c_device_id *id)
{
	struct cs4349_private *cs4349;
	int ret;

	cs4349 = FUNC4(&client->dev, sizeof(*cs4349), GFP_KERNEL);
	if (!cs4349)
		return -ENOMEM;

	cs4349->regmap = FUNC5(client, &cs4349_regmap);
	if (FUNC0(cs4349->regmap)) {
		ret = FUNC1(cs4349->regmap);
		FUNC2(&client->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	/* Reset the Device */
	cs4349->reset_gpio = FUNC3(&client->dev,
		"reset", GPIOD_OUT_LOW);
	if (FUNC0(cs4349->reset_gpio))
		return FUNC1(cs4349->reset_gpio);

	FUNC7(cs4349->reset_gpio, 1);

	FUNC8(client, cs4349);

	return FUNC6(&client->dev,
		&soc_component_dev_cs4349,
		&cs4349_dai, 1);
}