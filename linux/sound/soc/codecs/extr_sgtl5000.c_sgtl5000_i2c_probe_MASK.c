#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct sgtl5000_priv {int revision; scalar_t__ num_supplies; int micbias_resistor; int micbias_voltage; int lrclk_strength; int sclk_strength; int /*<<< orphan*/  supplies; int /*<<< orphan*/  mclk; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2S_LRCLK_STRENGTH_HIGH ; 
 void* I2S_LRCLK_STRENGTH_LOW ; 
 int I2S_SCLK_STRENGTH_HIGH ; 
 void* I2S_SCLK_STRENGTH_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINREG_VDDD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SGTL5000_ANA_POWER_DEFAULT ; 
 int /*<<< orphan*/  SGTL5000_CHIP_ANA_POWER ; 
 int /*<<< orphan*/  SGTL5000_CHIP_CLK_CTRL ; 
 int SGTL5000_CHIP_CLK_CTRL_DEFAULT ; 
 int /*<<< orphan*/  SGTL5000_CHIP_ID ; 
 int /*<<< orphan*/  SGTL5000_CHIP_LINREG_CTRL ; 
 int SGTL5000_LINEREG_D_POWERUP ; 
 int SGTL5000_LINREG_SIMPLE_POWERUP ; 
 int /*<<< orphan*/  SGTL5000_LINREG_VDDD_MASK ; 
#define  SGTL5000_MICBIAS_2K 131 
#define  SGTL5000_MICBIAS_4K 130 
#define  SGTL5000_MICBIAS_8K 129 
#define  SGTL5000_MICBIAS_OFF 128 
 int SGTL5000_PARTID_MASK ; 
 int SGTL5000_PARTID_PART_ID ; 
 int SGTL5000_PARTID_SHIFT ; 
 int SGTL5000_REVID_MASK ; 
 int SGTL5000_REVID_SHIFT ; 
 int SGTL5000_STARTUP_POWERUP ; 
 scalar_t__ VDDD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct sgtl5000_priv* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct sgtl5000_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sgtl5000_dai ; 
 int /*<<< orphan*/  sgtl5000_driver ; 
 int FUNC18 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC19 (struct i2c_client*) ; 
 int /*<<< orphan*/  sgtl5000_regmap ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct sgtl5000_priv *sgtl5000;
	int ret, reg, rev;
	struct device_node *np = client->dev.of_node;
	u32 value;
	u16 ana_pwr;

	sgtl5000 = FUNC8(&client->dev, sizeof(*sgtl5000), GFP_KERNEL);
	if (!sgtl5000)
		return -ENOMEM;

	FUNC11(client, sgtl5000);

	ret = FUNC18(client);
	if (ret)
		return ret;

	sgtl5000->regmap = FUNC9(client, &sgtl5000_regmap);
	if (FUNC0(sgtl5000->regmap)) {
		ret = FUNC1(sgtl5000->regmap);
		FUNC5(&client->dev, "Failed to allocate regmap: %d\n", ret);
		goto disable_regs;
	}

	sgtl5000->mclk = FUNC7(&client->dev, NULL);
	if (FUNC0(sgtl5000->mclk)) {
		ret = FUNC1(sgtl5000->mclk);
		/* Defer the probe to see if the clk will be provided later */
		if (ret == -ENOENT)
			ret = -EPROBE_DEFER;

		if (ret != -EPROBE_DEFER)
			FUNC5(&client->dev, "Failed to get mclock: %d\n",
				ret);
		goto disable_regs;
	}

	ret = FUNC3(sgtl5000->mclk);
	if (ret) {
		FUNC5(&client->dev, "Error enabling clock %d\n", ret);
		goto disable_regs;
	}

	/* Need 8 clocks before I2C accesses */
	FUNC20(1);

	/* read chip information */
	ret = FUNC13(sgtl5000->regmap, SGTL5000_CHIP_ID, &reg);
	if (ret) {
		FUNC5(&client->dev, "Error reading chip id %d\n", ret);
		goto disable_clk;
	}

	if (((reg & SGTL5000_PARTID_MASK) >> SGTL5000_PARTID_SHIFT) !=
	    SGTL5000_PARTID_PART_ID) {
		FUNC5(&client->dev,
			"Device with ID register %x is not a sgtl5000\n", reg);
		ret = -ENODEV;
		goto disable_clk;
	}

	rev = (reg & SGTL5000_REVID_MASK) >> SGTL5000_REVID_SHIFT;
	FUNC6(&client->dev, "sgtl5000 revision 0x%x\n", rev);
	sgtl5000->revision = rev;

	/* reconfigure the clocks in case we're using the PLL */
	ret = FUNC15(sgtl5000->regmap,
			   SGTL5000_CHIP_CLK_CTRL,
			   SGTL5000_CHIP_CLK_CTRL_DEFAULT);
	if (ret)
		FUNC5(&client->dev,
			"Error %d initializing CHIP_CLK_CTRL\n", ret);

	/* Follow section 2.2.1.1 of AN3663 */
	ana_pwr = SGTL5000_ANA_POWER_DEFAULT;
	if (sgtl5000->num_supplies <= VDDD) {
		/* internal VDDD at 1.2V */
		ret = FUNC14(sgtl5000->regmap,
					 SGTL5000_CHIP_LINREG_CTRL,
					 SGTL5000_LINREG_VDDD_MASK,
					 LINREG_VDDD);
		if (ret)
			FUNC5(&client->dev,
				"Error %d setting LINREG_VDDD\n", ret);

		ana_pwr |= SGTL5000_LINEREG_D_POWERUP;
		FUNC6(&client->dev,
			 "Using internal LDO instead of VDDD: check ER1 erratum\n");
	} else {
		/* using external LDO for VDDD
		 * Clear startup powerup and simple powerup
		 * bits to save power
		 */
		ana_pwr &= ~(SGTL5000_STARTUP_POWERUP
			     | SGTL5000_LINREG_SIMPLE_POWERUP);
		FUNC4(&client->dev, "Using external VDDD\n");
	}
	ret = FUNC15(sgtl5000->regmap, SGTL5000_CHIP_ANA_POWER, ana_pwr);
	if (ret)
		FUNC5(&client->dev,
			"Error %d setting CHIP_ANA_POWER to %04x\n",
			ret, ana_pwr);

	if (np) {
		if (!FUNC12(np,
			"micbias-resistor-k-ohms", &value)) {
			switch (value) {
			case SGTL5000_MICBIAS_OFF:
				sgtl5000->micbias_resistor = 0;
				break;
			case SGTL5000_MICBIAS_2K:
				sgtl5000->micbias_resistor = 1;
				break;
			case SGTL5000_MICBIAS_4K:
				sgtl5000->micbias_resistor = 2;
				break;
			case SGTL5000_MICBIAS_8K:
				sgtl5000->micbias_resistor = 3;
				break;
			default:
				sgtl5000->micbias_resistor = 2;
				FUNC5(&client->dev,
					"Unsuitable MicBias resistor\n");
			}
		} else {
			/* default is 4Kohms */
			sgtl5000->micbias_resistor = 2;
		}
		if (!FUNC12(np,
			"micbias-voltage-m-volts", &value)) {
			/* 1250mV => 0 */
			/* steps of 250mV */
			if ((value >= 1250) && (value <= 3000))
				sgtl5000->micbias_voltage = (value / 250) - 5;
			else {
				sgtl5000->micbias_voltage = 0;
				FUNC5(&client->dev,
					"Unsuitable MicBias voltage\n");
			}
		} else {
			sgtl5000->micbias_voltage = 0;
		}
	}

	sgtl5000->lrclk_strength = I2S_LRCLK_STRENGTH_LOW;
	if (!FUNC12(np, "lrclk-strength", &value)) {
		if (value > I2S_LRCLK_STRENGTH_HIGH)
			value = I2S_LRCLK_STRENGTH_LOW;
		sgtl5000->lrclk_strength = value;
	}

	sgtl5000->sclk_strength = I2S_SCLK_STRENGTH_LOW;
	if (!FUNC12(np, "sclk-strength", &value)) {
		if (value > I2S_SCLK_STRENGTH_HIGH)
			value = I2S_SCLK_STRENGTH_LOW;
		sgtl5000->sclk_strength = value;
	}

	/* Ensure sgtl5000 will start with sane register values */
	FUNC19(client);

	ret = FUNC10(&client->dev,
			&sgtl5000_driver, &sgtl5000_dai, 1);
	if (ret)
		goto disable_clk;

	return 0;

disable_clk:
	FUNC2(sgtl5000->mclk);

disable_regs:
	FUNC16(sgtl5000->num_supplies, sgtl5000->supplies);
	FUNC17(sgtl5000->num_supplies, sgtl5000->supplies);

	return ret;
}