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
struct ak4118_priv {void* irq; void* reset; void* regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  ak4118_dai ; 
 int /*<<< orphan*/  ak4118_irq_handler ; 
 int /*<<< orphan*/  ak4118_regmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ak4118_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct ak4118_priv*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct ak4118_priv*) ; 
 int /*<<< orphan*/  soc_component_drv_ak4118 ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct ak4118_priv *ak4118;
	int ret;

	ak4118 = FUNC4(&i2c->dev, sizeof(struct ak4118_priv),
			      GFP_KERNEL);
	if (ak4118 == NULL)
		return -ENOMEM;

	ak4118->regmap = FUNC5(i2c, &ak4118_regmap);
	if (FUNC0(ak4118->regmap))
		return FUNC1(ak4118->regmap);

	FUNC9(i2c, ak4118);

	ak4118->reset = FUNC3(&i2c->dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(ak4118->reset)) {
		ret = FUNC1(ak4118->reset);
		if (ret != -EPROBE_DEFER)
			FUNC2(&i2c->dev, "Failed to get reset: %d\n", ret);
		return ret;
	}

	ak4118->irq = FUNC3(&i2c->dev, "irq", GPIOD_IN);
	if (FUNC0(ak4118->irq)) {
		ret = FUNC1(ak4118->irq);
		if (ret != -EPROBE_DEFER)
			FUNC2(&i2c->dev, "Failed to get IRQ: %d\n", ret);
		return ret;
	}

	ret = FUNC6(&i2c->dev, FUNC8(ak4118->irq),
					NULL, ak4118_irq_handler,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"ak4118-irq", ak4118);
	if (ret < 0) {
		FUNC2(&i2c->dev, "Fail to request_irq: %d\n", ret);
		return ret;
	}

	return FUNC7(&i2c->dev,
				&soc_component_drv_ak4118, &ak4118_dai, 1);
}