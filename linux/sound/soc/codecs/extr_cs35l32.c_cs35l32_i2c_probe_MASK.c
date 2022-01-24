#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct cs35l32_platform_data {int boost_mng; int sdout_share; int sdout_datacfg; int batt_recov; int batt_thresh; } ;
struct cs35l32_private {TYPE_1__* supplies; int /*<<< orphan*/  regmap; struct cs35l32_platform_data pdata; int /*<<< orphan*/  reset_gpio; } ;
struct TYPE_16__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CS35L32_ADSP_CTL ; 
 int CS35L32_ADSP_DATACFG_MASK ; 
 int CS35L32_ADSP_SHARE_MASK ; 
 int /*<<< orphan*/  CS35L32_AUDIO_LED_MNGR ; 
 int CS35L32_BATT_REC_MASK ; 
 int /*<<< orphan*/  CS35L32_BATT_THRESHOLD ; 
 int CS35L32_BATT_THRESH_MASK ; 
 int CS35L32_BOOST_MASK ; 
 unsigned int CS35L32_CHIP_ID ; 
 int /*<<< orphan*/  CS35L32_DEVID_AB ; 
 int /*<<< orphan*/  CS35L32_DEVID_CD ; 
 int /*<<< orphan*/  CS35L32_DEVID_E ; 
 int /*<<< orphan*/  CS35L32_INT_STATUS_1 ; 
 int CS35L32_PDN_AMP ; 
 int /*<<< orphan*/  CS35L32_PWRCTL1 ; 
 int /*<<< orphan*/  CS35L32_REV_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cs35l32_dai ; 
 int FUNC3 (struct i2c_client*,struct cs35l32_platform_data*) ; 
 TYPE_1__* cs35l32_monitor_patch ; 
 int /*<<< orphan*/  cs35l32_regmap ; 
 int /*<<< orphan*/ * cs35l32_supply_names ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 struct cs35l32_platform_data* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_4__*,int,TYPE_1__*) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct cs35l32_private*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC15 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,TYPE_1__*) ; 
 int FUNC18 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_component_dev_cs35l32 ; 

__attribute__((used)) static int FUNC19(struct i2c_client *i2c_client,
				       const struct i2c_device_id *id)
{
	struct cs35l32_private *cs35l32;
	struct cs35l32_platform_data *pdata =
		FUNC5(&i2c_client->dev);
	int ret, i;
	unsigned int devid = 0;
	unsigned int reg;

	cs35l32 = FUNC8(&i2c_client->dev, sizeof(*cs35l32), GFP_KERNEL);
	if (!cs35l32)
		return -ENOMEM;

	FUNC13(i2c_client, cs35l32);

	cs35l32->regmap = FUNC9(i2c_client, &cs35l32_regmap);
	if (FUNC1(cs35l32->regmap)) {
		ret = FUNC2(cs35l32->regmap);
		FUNC4(&i2c_client->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	if (pdata) {
		cs35l32->pdata = *pdata;
	} else {
		pdata = FUNC8(&i2c_client->dev, sizeof(*pdata),
				     GFP_KERNEL);
		if (!pdata)
			return -ENOMEM;

		if (i2c_client->dev.of_node) {
			ret = FUNC3(i2c_client,
						     &cs35l32->pdata);
			if (ret != 0)
				return ret;
		}
	}

	for (i = 0; i < FUNC0(cs35l32->supplies); i++)
		cs35l32->supplies[i].supply = cs35l32_supply_names[i];

	ret = FUNC10(&i2c_client->dev,
				      FUNC0(cs35l32->supplies),
				      cs35l32->supplies);
	if (ret != 0) {
		FUNC4(&i2c_client->dev,
			"Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC18(FUNC0(cs35l32->supplies),
				    cs35l32->supplies);
	if (ret != 0) {
		FUNC4(&i2c_client->dev,
			"Failed to enable supplies: %d\n", ret);
		return ret;
	}

	/* Reset the Device */
	cs35l32->reset_gpio = FUNC7(&i2c_client->dev,
		"reset", GPIOD_OUT_LOW);
	if (FUNC1(cs35l32->reset_gpio))
		return FUNC2(cs35l32->reset_gpio);

	FUNC12(cs35l32->reset_gpio, 1);

	/* initialize codec */
	ret = FUNC14(cs35l32->regmap, CS35L32_DEVID_AB, &reg);
	devid = (reg & 0xFF) << 12;

	ret = FUNC14(cs35l32->regmap, CS35L32_DEVID_CD, &reg);
	devid |= (reg & 0xFF) << 4;

	ret = FUNC14(cs35l32->regmap, CS35L32_DEVID_E, &reg);
	devid |= (reg & 0xF0) >> 4;

	if (devid != CS35L32_CHIP_ID) {
		ret = -ENODEV;
		FUNC4(&i2c_client->dev,
			"CS35L32 Device ID (%X). Expected %X\n",
			devid, CS35L32_CHIP_ID);
		return ret;
	}

	ret = FUNC14(cs35l32->regmap, CS35L32_REV_ID, &reg);
	if (ret < 0) {
		FUNC4(&i2c_client->dev, "Get Revision ID failed\n");
		return ret;
	}

	ret = FUNC15(cs35l32->regmap, cs35l32_monitor_patch,
				    FUNC0(cs35l32_monitor_patch));
	if (ret < 0) {
		FUNC4(&i2c_client->dev, "Failed to apply errata patch\n");
		return ret;
	}

	FUNC6(&i2c_client->dev,
		 "Cirrus Logic CS35L32, Revision: %02X\n", reg & 0xFF);

	/* Setup VBOOST Management */
	if (cs35l32->pdata.boost_mng)
		FUNC16(cs35l32->regmap, CS35L32_AUDIO_LED_MNGR,
				   CS35L32_BOOST_MASK,
				cs35l32->pdata.boost_mng);

	/* Setup ADSP Format Config */
	if (cs35l32->pdata.sdout_share)
		FUNC16(cs35l32->regmap, CS35L32_ADSP_CTL,
				    CS35L32_ADSP_SHARE_MASK,
				cs35l32->pdata.sdout_share << 3);

	/* Setup ADSP Data Configuration */
	if (cs35l32->pdata.sdout_datacfg)
		FUNC16(cs35l32->regmap, CS35L32_ADSP_CTL,
				   CS35L32_ADSP_DATACFG_MASK,
				cs35l32->pdata.sdout_datacfg << 4);

	/* Setup Low Battery Recovery  */
	if (cs35l32->pdata.batt_recov)
		FUNC16(cs35l32->regmap, CS35L32_BATT_THRESHOLD,
				   CS35L32_BATT_REC_MASK,
				cs35l32->pdata.batt_recov << 1);

	/* Setup Low Battery Threshold */
	if (cs35l32->pdata.batt_thresh)
		FUNC16(cs35l32->regmap, CS35L32_BATT_THRESHOLD,
				   CS35L32_BATT_THRESH_MASK,
				cs35l32->pdata.batt_thresh << 4);

	/* Power down the AMP */
	FUNC16(cs35l32->regmap, CS35L32_PWRCTL1, CS35L32_PDN_AMP,
			    CS35L32_PDN_AMP);

	/* Clear MCLK Error Bit since we don't have the clock yet */
	ret = FUNC14(cs35l32->regmap, CS35L32_INT_STATUS_1, &reg);

	ret = FUNC11(&i2c_client->dev,
			&soc_component_dev_cs35l32, cs35l32_dai,
			FUNC0(cs35l32_dai));
	if (ret < 0)
		goto err_disable;

	return 0;

err_disable:
	FUNC17(FUNC0(cs35l32->supplies),
			       cs35l32->supplies);
	return ret;
}