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
struct i2c_client {struct device dev; int /*<<< orphan*/  irq; } ;
struct es8316_priv {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct es8316_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct es8316_priv*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  es8316_dai ; 
 int /*<<< orphan*/  es8316_irq ; 
 int /*<<< orphan*/  es8316_regmap ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct es8316_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soc_component_dev_es8316 ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c_client,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c_client->dev;
	struct es8316_priv *es8316;
	int ret;

	es8316 = FUNC3(&i2c_client->dev, sizeof(struct es8316_priv),
			      GFP_KERNEL);
	if (es8316 == NULL)
		return -ENOMEM;

	FUNC8(i2c_client, es8316);

	es8316->regmap = FUNC4(i2c_client, &es8316_regmap);
	if (FUNC0(es8316->regmap))
		return FUNC1(es8316->regmap);

	es8316->irq = i2c_client->irq;
	FUNC9(&es8316->lock);

	ret = FUNC5(dev, es8316->irq, NULL, es8316_irq,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"es8316", es8316);
	if (ret == 0) {
		/* Gets re-enabled by es8316_set_jack() */
		FUNC7(es8316->irq);
	} else {
		FUNC2(dev, "Failed to get IRQ %d: %d\n", es8316->irq, ret);
		es8316->irq = -ENXIO;
	}

	return FUNC6(&i2c_client->dev,
				      &soc_component_dev_es8316,
				      &es8316_dai, 1);
}