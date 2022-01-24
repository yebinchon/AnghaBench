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
struct wm8971_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct wm8971_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct wm8971_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8971 ; 
 int /*<<< orphan*/  wm8971_dai ; 
 int /*<<< orphan*/  wm8971_regmap ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8971_priv *wm8971;
	int ret;

	wm8971 = FUNC2(&i2c->dev, sizeof(struct wm8971_priv),
			      GFP_KERNEL);
	if (wm8971 == NULL)
		return -ENOMEM;

	wm8971->regmap = FUNC3(i2c, &wm8971_regmap);
	if (FUNC0(wm8971->regmap))
		return FUNC1(wm8971->regmap);

	FUNC5(i2c, wm8971);

	ret = FUNC4(&i2c->dev,
			&soc_component_dev_wm8971, &wm8971_dai, 1);

	return ret;
}