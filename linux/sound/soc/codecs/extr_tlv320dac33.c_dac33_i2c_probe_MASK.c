#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct tlv320dac33_priv {scalar_t__ power_gpio; int mode1_latency; TYPE_3__* supplies; int /*<<< orphan*/  fifo_mode; int /*<<< orphan*/  irq; int /*<<< orphan*/  keep_bclk; int /*<<< orphan*/  burst_bclkdiv; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; struct i2c_client* i2c; int /*<<< orphan*/  reg_cache; } ;
struct tlv320dac33_platform_data {scalar_t__ power_gpio; int mode1_latency; int /*<<< orphan*/  keep_bclk; int /*<<< orphan*/  burst_bclkdiv; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct tlv320dac33_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  irq; } ;
struct TYPE_11__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DAC33_FIFO_BYPASS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dac33_dai ; 
 TYPE_3__* dac33_reg ; 
 int /*<<< orphan*/ * dac33_supply_names ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 struct tlv320dac33_priv* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,TYPE_3__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct tlv320dac33_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soc_component_dev_tlv320dac33 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct tlv320dac33_platform_data *pdata;
	struct tlv320dac33_priv *dac33;
	int ret, i;

	if (client->dev.platform_data == NULL) {
		FUNC1(&client->dev, "Platform data not set\n");
		return -ENODEV;
	}
	pdata = client->dev.platform_data;

	dac33 = FUNC3(&client->dev, sizeof(struct tlv320dac33_priv),
			     GFP_KERNEL);
	if (dac33 == NULL)
		return -ENOMEM;

	dac33->reg_cache = FUNC2(&client->dev,
					dac33_reg,
					FUNC0(dac33_reg) * sizeof(u8),
					GFP_KERNEL);
	if (!dac33->reg_cache)
		return -ENOMEM;

	dac33->i2c = client;
	FUNC10(&dac33->mutex);
	FUNC11(&dac33->lock);

	FUNC9(client, dac33);

	dac33->power_gpio = pdata->power_gpio;
	dac33->burst_bclkdiv = pdata->burst_bclkdiv;
	dac33->keep_bclk = pdata->keep_bclk;
	dac33->mode1_latency = pdata->mode1_latency;
	if (!dac33->mode1_latency)
		dac33->mode1_latency = 10000; /* 10ms */
	dac33->irq = client->irq;
	/* Disable FIFO use by default */
	dac33->fifo_mode = DAC33_FIFO_BYPASS;

	/* Check if the reset GPIO number is valid and request it */
	if (dac33->power_gpio >= 0) {
		ret = FUNC8(dac33->power_gpio, "tlv320dac33 reset");
		if (ret < 0) {
			FUNC1(&client->dev,
				"Failed to request reset GPIO (%d)\n",
				dac33->power_gpio);
			goto err_gpio;
		}
		FUNC6(dac33->power_gpio, 0);
	}

	for (i = 0; i < FUNC0(dac33->supplies); i++)
		dac33->supplies[i].supply = dac33_supply_names[i];

	ret = FUNC4(&client->dev, FUNC0(dac33->supplies),
				 dac33->supplies);

	if (ret != 0) {
		FUNC1(&client->dev, "Failed to request supplies: %d\n", ret);
		goto err_get;
	}

	ret = FUNC5(&client->dev,
			&soc_component_dev_tlv320dac33, &dac33_dai, 1);
	if (ret < 0)
		goto err_get;

	return ret;
err_get:
	if (dac33->power_gpio >= 0)
		FUNC7(dac33->power_gpio);
err_gpio:
	return ret;
}