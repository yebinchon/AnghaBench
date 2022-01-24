#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_11__ {struct device_node* of_node; struct aic3x_pdata* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct aic3x_setup_data {int /*<<< orphan*/  gpio_func; } ;
struct aic3x_priv {int gpio_reset; scalar_t__ model; int /*<<< orphan*/  list; int /*<<< orphan*/  regmap; TYPE_1__* supplies; void* micbias_vg; struct aic3x_setup_data* setup; } ;
struct aic3x_pdata {int gpio_reset; void* micbias_vg; struct aic3x_setup_data* setup; } ;
struct TYPE_10__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 void* AIC3X_MICBIAS_2_0V ; 
 void* AIC3X_MICBIAS_2_5V ; 
 void* AIC3X_MICBIAS_AVDDV ; 
 void* AIC3X_MICBIAS_OFF ; 
 scalar_t__ AIC3X_MODEL_3007 ; 
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* aic3007_class_d ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  aic3x_dai ; 
 int /*<<< orphan*/  FUNC5 (struct aic3x_priv*) ; 
 int /*<<< orphan*/  aic3x_regmap ; 
 int /*<<< orphan*/ * aic3x_supply_names ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 void* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int,TYPE_1__*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct aic3x_priv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC20 (struct device_node*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  reset_list ; 
 int /*<<< orphan*/  soc_component_dev_aic3x ; 

__attribute__((used)) static int FUNC23(struct i2c_client *i2c,
			   const struct i2c_device_id *id)
{
	struct aic3x_pdata *pdata = i2c->dev.platform_data;
	struct aic3x_priv *aic3x;
	struct aic3x_setup_data *ai3x_setup;
	struct device_node *np = i2c->dev.of_node;
	int ret, i;
	u32 value;

	aic3x = FUNC8(&i2c->dev, sizeof(struct aic3x_priv), GFP_KERNEL);
	if (!aic3x)
		return -ENOMEM;

	aic3x->regmap = FUNC9(i2c, &aic3x_regmap);
	if (FUNC2(aic3x->regmap)) {
		ret = FUNC3(aic3x->regmap);
		return ret;
	}

	FUNC21(aic3x->regmap, true);

	FUNC16(i2c, aic3x);
	if (pdata) {
		aic3x->gpio_reset = pdata->gpio_reset;
		aic3x->setup = pdata->setup;
		aic3x->micbias_vg = pdata->micbias_vg;
	} else if (np) {
		ai3x_setup = FUNC8(&i2c->dev, sizeof(*ai3x_setup),
								GFP_KERNEL);
		if (!ai3x_setup)
			return -ENOMEM;

		ret = FUNC18(np, "reset-gpios", 0);
		if (ret >= 0) {
			aic3x->gpio_reset = ret;
		} else {
			ret = FUNC18(np, "gpio-reset", 0);
			if (ret > 0) {
				FUNC7(&i2c->dev, "Using deprecated property \"gpio-reset\", please update your DT");
				aic3x->gpio_reset = ret;
			} else {
				aic3x->gpio_reset = -1;
			}
		}

		if (FUNC20(np, "ai3x-gpio-func",
					ai3x_setup->gpio_func, 2) >= 0) {
			aic3x->setup = ai3x_setup;
		}

		if (!FUNC19(np, "ai3x-micbias-vg", &value)) {
			switch (value) {
			case 1 :
				aic3x->micbias_vg = AIC3X_MICBIAS_2_0V;
				break;
			case 2 :
				aic3x->micbias_vg = AIC3X_MICBIAS_2_5V;
				break;
			case 3 :
				aic3x->micbias_vg = AIC3X_MICBIAS_AVDDV;
				break;
			default :
				aic3x->micbias_vg = AIC3X_MICBIAS_OFF;
				FUNC6(&i2c->dev, "Unsuitable MicBias voltage "
							"found in DT\n");
			}
		} else {
			aic3x->micbias_vg = AIC3X_MICBIAS_OFF;
		}

	} else {
		aic3x->gpio_reset = -1;
	}

	aic3x->model = id->driver_data;

	if (FUNC14(aic3x->gpio_reset) &&
	    !FUNC5(aic3x)) {
		ret = FUNC15(aic3x->gpio_reset, "tlv320aic3x reset");
		if (ret != 0)
			goto err;
		FUNC12(aic3x->gpio_reset, 0);
	}

	for (i = 0; i < FUNC0(aic3x->supplies); i++)
		aic3x->supplies[i].supply = aic3x_supply_names[i];

	ret = FUNC10(&i2c->dev, FUNC0(aic3x->supplies),
				      aic3x->supplies);
	if (ret != 0) {
		FUNC6(&i2c->dev, "Failed to request supplies: %d\n", ret);
		goto err_gpio;
	}

	FUNC4(i2c);

	if (aic3x->model == AIC3X_MODEL_3007) {
		ret = FUNC22(aic3x->regmap, aic3007_class_d,
					    FUNC0(aic3007_class_d));
		if (ret != 0)
			FUNC6(&i2c->dev, "Failed to init class D: %d\n",
				ret);
	}

	ret = FUNC11(&i2c->dev,
			&soc_component_dev_aic3x, &aic3x_dai, 1);

	if (ret != 0)
		goto err_gpio;

	FUNC1(&aic3x->list);
	FUNC17(&aic3x->list, &reset_list);

	return 0;

err_gpio:
	if (FUNC14(aic3x->gpio_reset) &&
	    !FUNC5(aic3x))
		FUNC13(aic3x->gpio_reset);
err:
	return ret;
}