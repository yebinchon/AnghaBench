#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_14__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_3__ dev; int /*<<< orphan*/  irq; } ;
struct cs42l42_private {TYPE_1__* supplies; scalar_t__ regmap; scalar_t__ reset_gpio; } ;
struct TYPE_13__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int CS42L42_ADC_PDN_MASK ; 
 int CS42L42_ADC_PDN_SHIFT ; 
 int CS42L42_ASP_DAI_PDN_MASK ; 
 int CS42L42_ASP_DAI_PDN_SHIFT ; 
 int CS42L42_ASP_DAO_PDN_MASK ; 
 int CS42L42_ASP_DAO_PDN_SHIFT ; 
 unsigned int CS42L42_CHIP_ID ; 
 int /*<<< orphan*/  CS42L42_DEVID_AB ; 
 int /*<<< orphan*/  CS42L42_DEVID_CD ; 
 int /*<<< orphan*/  CS42L42_DEVID_E ; 
 int CS42L42_EQ_PDN_MASK ; 
 int CS42L42_EQ_PDN_SHIFT ; 
 int CS42L42_HP_PDN_MASK ; 
 int CS42L42_HP_PDN_SHIFT ; 
 int CS42L42_MIXER_PDN_MASK ; 
 int CS42L42_MIXER_PDN_SHIFT ; 
 int CS42L42_PDN_ALL_MASK ; 
 int CS42L42_PDN_ALL_SHIFT ; 
 int /*<<< orphan*/  CS42L42_PWR_CTL1 ; 
 int /*<<< orphan*/  CS42L42_REVID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  cs42l42_dai ; 
 int FUNC3 (struct i2c_client*,struct cs42l42_private*) ; 
 int /*<<< orphan*/  cs42l42_irq_thread ; 
 int /*<<< orphan*/  cs42l42_regmap ; 
 int /*<<< orphan*/  FUNC4 (struct cs42l42_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct cs42l42_private*) ; 
 int /*<<< orphan*/ * cs42l42_supply_names ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,unsigned int) ; 
 scalar_t__ FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct cs42l42_private* FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_3__*,int,TYPE_1__*) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct cs42l42_private*) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct cs42l42_private*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int,TYPE_1__*) ; 
 int FUNC21 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_component_dev_cs42l42 ; 

__attribute__((used)) static int FUNC22(struct i2c_client *i2c_client,
				       const struct i2c_device_id *id)
{
	struct cs42l42_private *cs42l42;
	int ret, i;
	unsigned int devid = 0;
	unsigned int reg;

	cs42l42 = FUNC10(&i2c_client->dev, sizeof(struct cs42l42_private),
			       GFP_KERNEL);
	if (!cs42l42)
		return -ENOMEM;

	FUNC16(i2c_client, cs42l42);

	cs42l42->regmap = FUNC11(i2c_client, &cs42l42_regmap);
	if (FUNC1(cs42l42->regmap)) {
		ret = FUNC2(cs42l42->regmap);
		FUNC7(&i2c_client->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	for (i = 0; i < FUNC0(cs42l42->supplies); i++)
		cs42l42->supplies[i].supply = cs42l42_supply_names[i];

	ret = FUNC12(&i2c_client->dev,
				      FUNC0(cs42l42->supplies),
				      cs42l42->supplies);
	if (ret != 0) {
		FUNC7(&i2c_client->dev,
			"Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC21(FUNC0(cs42l42->supplies),
				    cs42l42->supplies);
	if (ret != 0) {
		FUNC7(&i2c_client->dev,
			"Failed to enable supplies: %d\n", ret);
		return ret;
	}

	/* Reset the Device */
	cs42l42->reset_gpio = FUNC9(&i2c_client->dev,
		"reset", GPIOD_OUT_LOW);
	if (FUNC1(cs42l42->reset_gpio))
		return FUNC2(cs42l42->reset_gpio);

	if (cs42l42->reset_gpio) {
		FUNC6(&i2c_client->dev, "Found reset GPIO\n");
		FUNC15(cs42l42->reset_gpio, 1);
	}
	FUNC17(3);

	/* Request IRQ */
	ret = FUNC13(&i2c_client->dev,
			i2c_client->irq,
			NULL, cs42l42_irq_thread,
			IRQF_ONESHOT | IRQF_TRIGGER_LOW,
			"cs42l42", cs42l42);

	if (ret != 0)
		FUNC7(&i2c_client->dev,
			"Failed to request IRQ: %d\n", ret);

	/* initialize codec */
	ret = FUNC18(cs42l42->regmap, CS42L42_DEVID_AB, &reg);
	devid = (reg & 0xFF) << 12;

	ret = FUNC18(cs42l42->regmap, CS42L42_DEVID_CD, &reg);
	devid |= (reg & 0xFF) << 4;

	ret = FUNC18(cs42l42->regmap, CS42L42_DEVID_E, &reg);
	devid |= (reg & 0xF0) >> 4;

	if (devid != CS42L42_CHIP_ID) {
		ret = -ENODEV;
		FUNC7(&i2c_client->dev,
			"CS42L42 Device ID (%X). Expected %X\n",
			devid, CS42L42_CHIP_ID);
		return ret;
	}

	ret = FUNC18(cs42l42->regmap, CS42L42_REVID, &reg);
	if (ret < 0) {
		FUNC7(&i2c_client->dev, "Get Revision ID failed\n");
		return ret;
	}

	FUNC8(&i2c_client->dev,
		 "Cirrus Logic CS42L42, Revision: %02X\n", reg & 0xFF);

	/* Power up the codec */
	FUNC19(cs42l42->regmap, CS42L42_PWR_CTL1,
			CS42L42_ASP_DAO_PDN_MASK |
			CS42L42_ASP_DAI_PDN_MASK |
			CS42L42_MIXER_PDN_MASK |
			CS42L42_EQ_PDN_MASK |
			CS42L42_HP_PDN_MASK |
			CS42L42_ADC_PDN_MASK |
			CS42L42_PDN_ALL_MASK,
			(1 << CS42L42_ASP_DAO_PDN_SHIFT) |
			(1 << CS42L42_ASP_DAI_PDN_SHIFT) |
			(1 << CS42L42_MIXER_PDN_SHIFT) |
			(1 << CS42L42_EQ_PDN_SHIFT) |
			(1 << CS42L42_HP_PDN_SHIFT) |
			(1 << CS42L42_ADC_PDN_SHIFT) |
			(0 << CS42L42_PDN_ALL_SHIFT));

	if (i2c_client->dev.of_node) {
		ret = FUNC3(i2c_client, cs42l42);
		if (ret != 0)
			return ret;
	}

	/* Setup headset detection */
	FUNC5(cs42l42);

	/* Mask/Unmask Interrupts */
	FUNC4(cs42l42);

	/* Register codec for machine driver */
	ret = FUNC14(&i2c_client->dev,
			&soc_component_dev_cs42l42, &cs42l42_dai, 1);
	if (ret < 0)
		goto err_disable;
	return 0;

err_disable:
	FUNC20(FUNC0(cs42l42->supplies),
				cs42l42->supplies);
	return ret;
}