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
struct pcm1681_private {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct pcm1681_private* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct pcm1681_private*) ; 
 int /*<<< orphan*/  pcm1681_dai ; 
 int /*<<< orphan*/  pcm1681_regmap ; 
 int /*<<< orphan*/  soc_component_dev_pcm1681 ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	int ret;
	struct pcm1681_private *priv;

	priv = FUNC3(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->regmap = FUNC4(client, &pcm1681_regmap);
	if (FUNC0(priv->regmap)) {
		ret = FUNC1(priv->regmap);
		FUNC2(&client->dev, "Failed to create regmap: %d\n", ret);
		return ret;
	}

	FUNC6(client, priv);

	return FUNC5(&client->dev,
		&soc_component_dev_pcm1681,
		&pcm1681_dai, 1);
}