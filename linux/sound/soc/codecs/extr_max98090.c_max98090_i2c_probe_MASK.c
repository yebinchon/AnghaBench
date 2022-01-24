#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct max98090_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dmic_freq; int /*<<< orphan*/  pdata; int /*<<< orphan*/  devtype; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  platform_data; TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  irq; } ;
struct acpi_device_id {int /*<<< orphan*/  driver_data; } ;
typedef  int /*<<< orphan*/  kernel_ulong_t ;
struct TYPE_8__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX98090_DEFAULT_DMIC_FREQ ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct acpi_device_id* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 struct max98090_priv* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct max98090_priv*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct max98090_priv*) ; 
 int /*<<< orphan*/  max98090_dai ; 
 int /*<<< orphan*/  max98090_interrupt ; 
 int /*<<< orphan*/  max98090_regmap ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  soc_component_dev_max98090 ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
				 const struct i2c_device_id *i2c_id)
{
	struct max98090_priv *max98090;
	const struct acpi_device_id *acpi_id;
	kernel_ulong_t driver_data = 0;
	int ret;

	FUNC12("max98090_i2c_probe\n");

	max98090 = FUNC6(&i2c->dev, sizeof(struct max98090_priv),
		GFP_KERNEL);
	if (max98090 == NULL)
		return -ENOMEM;

	if (FUNC0(&i2c->dev)) {
		acpi_id = FUNC4(i2c->dev.driver->acpi_match_table,
					    &i2c->dev);
		if (!acpi_id) {
			FUNC5(&i2c->dev, "No driver data\n");
			return -EINVAL;
		}
		driver_data = acpi_id->driver_data;
	} else if (i2c_id) {
		driver_data = i2c_id->driver_data;
	}

	max98090->devtype = driver_data;
	FUNC10(i2c, max98090);
	max98090->pdata = i2c->dev.platform_data;

	ret = FUNC11(i2c->dev.of_node, "maxim,dmic-freq",
				   &max98090->dmic_freq);
	if (ret < 0)
		max98090->dmic_freq = MAX98090_DEFAULT_DMIC_FREQ;

	max98090->regmap = FUNC7(i2c, &max98090_regmap);
	if (FUNC2(max98090->regmap)) {
		ret = FUNC3(max98090->regmap);
		FUNC5(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
		goto err_enable;
	}

	ret = FUNC8(&i2c->dev, i2c->irq, NULL,
		max98090_interrupt, IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
		"max98090_interrupt", max98090);
	if (ret < 0) {
		FUNC5(&i2c->dev, "request_irq failed: %d\n",
			ret);
		return ret;
	}

	ret = FUNC9(&i2c->dev,
			&soc_component_dev_max98090, max98090_dai,
			FUNC1(max98090_dai));
err_enable:
	return ret;
}