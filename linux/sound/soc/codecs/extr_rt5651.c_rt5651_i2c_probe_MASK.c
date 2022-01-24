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
struct rt5651_priv {int hp_mute; int /*<<< orphan*/  irq; int /*<<< orphan*/  jack_detect_work; int /*<<< orphan*/  bp_work; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5651_DEVICE_ID ; 
 int RT5651_DEVICE_ID_VALUE ; 
 int /*<<< orphan*/  RT5651_RESET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rt5651_priv*) ; 
 struct rt5651_priv* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct rt5651_priv*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct rt5651_priv*) ; 
 int /*<<< orphan*/  init_list ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5651_button_press_work ; 
 int /*<<< orphan*/  rt5651_cancel_work ; 
 int /*<<< orphan*/  rt5651_dai ; 
 int /*<<< orphan*/  rt5651_irq ; 
 int /*<<< orphan*/  rt5651_jack_detect_work ; 
 int /*<<< orphan*/  rt5651_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt5651 ; 

__attribute__((used)) static int FUNC17(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5651_priv *rt5651;
	int ret;
	int err;

	rt5651 = FUNC8(&i2c->dev, sizeof(*rt5651),
				GFP_KERNEL);
	if (NULL == rt5651)
		return -ENOMEM;

	FUNC13(i2c, rt5651);

	rt5651->regmap = FUNC9(i2c, &rt5651_regmap);
	if (FUNC3(rt5651->regmap)) {
		ret = FUNC4(rt5651->regmap);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	err = FUNC14(rt5651->regmap, RT5651_DEVICE_ID, &ret);
	if (err)
		return err;

	if (ret != RT5651_DEVICE_ID_VALUE) {
		FUNC5(&i2c->dev,
			"Device with ID register %#x is not rt5651\n", ret);
		return -ENODEV;
	}

	FUNC16(rt5651->regmap, RT5651_RESET, 0);

	ret = FUNC15(rt5651->regmap, init_list,
				    FUNC0(init_list));
	if (ret != 0)
		FUNC6(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	rt5651->irq = i2c->irq;
	rt5651->hp_mute = true;

	FUNC1(&rt5651->bp_work, rt5651_button_press_work);
	FUNC2(&rt5651->jack_detect_work, rt5651_jack_detect_work);

	/* Make sure work is stopped on probe-error / remove */
	ret = FUNC7(&i2c->dev, rt5651_cancel_work, rt5651);
	if (ret)
		return ret;

	ret = FUNC10(&i2c->dev, rt5651->irq, rt5651_irq,
			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
			       | IRQF_ONESHOT, "rt5651", rt5651);
	if (ret == 0) {
		/* Gets re-enabled by rt5651_set_jack() */
		FUNC12(rt5651->irq);
	} else {
		FUNC6(&i2c->dev, "Failed to reguest IRQ %d: %d\n",
			 rt5651->irq, ret);
		rt5651->irq = -ENXIO;
	}

	ret = FUNC11(&i2c->dev,
				&soc_component_dev_rt5651,
				rt5651_dai, FUNC0(rt5651_dai));

	return ret;
}