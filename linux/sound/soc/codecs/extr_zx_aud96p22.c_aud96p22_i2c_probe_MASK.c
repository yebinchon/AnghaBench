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
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct aud96p22_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aud96p22_dai ; 
 int /*<<< orphan*/  aud96p22_driver ; 
 int /*<<< orphan*/  aud96p22_regmap ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct aud96p22_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct aud96p22_priv*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct aud96p22_priv *priv;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (priv == NULL)
		return -ENOMEM;

	priv->regmap = FUNC4(i2c, &aud96p22_regmap);
	if (FUNC0(priv->regmap)) {
		ret = FUNC1(priv->regmap);
		FUNC2(dev, "failed to init i2c regmap: %d\n", ret);
		return ret;
	}

	FUNC6(i2c, priv);

	ret = FUNC5(dev, &aud96p22_driver, &aud96p22_dai, 1);
	if (ret) {
		FUNC2(dev, "failed to register component: %d\n", ret);
		return ret;
	}

	return 0;
}