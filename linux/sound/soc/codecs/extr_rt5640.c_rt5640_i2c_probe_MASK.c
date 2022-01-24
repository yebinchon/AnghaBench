#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rt5640_priv {int hp_mute; int /*<<< orphan*/  irq; int /*<<< orphan*/  jack_work; int /*<<< orphan*/  bp_work; int /*<<< orphan*/  regmap; int /*<<< orphan*/  ldo1_en; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int RT5640_DEVICE_ID ; 
 int /*<<< orphan*/  RT5640_DUMMY1 ; 
 int /*<<< orphan*/  RT5640_MCLK_DET ; 
 int /*<<< orphan*/  RT5640_RESET ; 
 int /*<<< orphan*/  RT5640_VENDOR_ID2 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int,...) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,struct rt5640_priv*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rt5640_priv* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct rt5640_priv*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct rt5640_priv*) ; 
 int /*<<< orphan*/  init_list ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5640_button_press_work ; 
 int /*<<< orphan*/  rt5640_cancel_work ; 
 int /*<<< orphan*/  rt5640_dai ; 
 int /*<<< orphan*/  rt5640_irq ; 
 int /*<<< orphan*/  rt5640_jack_work ; 
 int FUNC21 (struct rt5640_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5640_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt5640 ; 

__attribute__((used)) static int FUNC22(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5640_priv *rt5640;
	int ret;
	unsigned int val;

	rt5640 = FUNC9(&i2c->dev,
				sizeof(struct rt5640_priv),
				GFP_KERNEL);
	if (NULL == rt5640)
		return -ENOMEM;
	FUNC15(i2c, rt5640);

	if (i2c->dev.of_node) {
		ret = FUNC21(rt5640, i2c->dev.of_node);
		if (ret)
			return ret;
	} else
		rt5640->ldo1_en = -EINVAL;

	rt5640->regmap = FUNC10(i2c, &rt5640_regmap);
	if (FUNC3(rt5640->regmap)) {
		ret = FUNC4(rt5640->regmap);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	if (FUNC14(rt5640->ldo1_en)) {
		ret = FUNC8(&i2c->dev, rt5640->ldo1_en,
					    GPIOF_OUT_INIT_HIGH,
					    "RT5640 LDO1_EN");
		if (ret < 0) {
			FUNC5(&i2c->dev, "Failed to request LDO1_EN %d: %d\n",
				rt5640->ldo1_en, ret);
			return ret;
		}
		FUNC16(400);
	}

	FUNC17(rt5640->regmap, RT5640_VENDOR_ID2, &val);
	if (val != RT5640_DEVICE_ID) {
		FUNC5(&i2c->dev,
			"Device with ID register %#x is not rt5640/39\n", val);
		return -ENODEV;
	}

	FUNC20(rt5640->regmap, RT5640_RESET, 0);

	ret = FUNC18(rt5640->regmap, init_list,
				    FUNC0(init_list));
	if (ret != 0)
		FUNC6(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	FUNC19(rt5640->regmap, RT5640_DUMMY1,
				RT5640_MCLK_DET, RT5640_MCLK_DET);

	rt5640->hp_mute = true;
	rt5640->irq = i2c->irq;
	FUNC1(&rt5640->bp_work, rt5640_button_press_work);
	FUNC2(&rt5640->jack_work, rt5640_jack_work);

	/* Make sure work is stopped on probe-error / remove */
	ret = FUNC7(&i2c->dev, rt5640_cancel_work, rt5640);
	if (ret)
		return ret;

	ret = FUNC11(&i2c->dev, rt5640->irq, rt5640_irq,
			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
			       | IRQF_ONESHOT, "rt5640", rt5640);
	if (ret == 0) {
		/* Gets re-enabled by rt5640_set_jack() */
		FUNC13(rt5640->irq);
	} else {
		FUNC6(&i2c->dev, "Failed to reguest IRQ %d: %d\n",
			 rt5640->irq, ret);
		rt5640->irq = -ENXIO;
	}

	return FUNC12(&i2c->dev,
				      &soc_component_dev_rt5640,
				      rt5640_dai, FUNC0(rt5640_dai));
}