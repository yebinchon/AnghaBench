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
struct nau8825 {int xtalk_protect; int xtalk_baktab_initialized; int /*<<< orphan*/  regmap; int /*<<< orphan*/  xtalk_work; int /*<<< orphan*/  xtalk_sem; int /*<<< orphan*/  xtalk_state; scalar_t__ irq; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; scalar_t__ irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAU8825_REG_I2C_DEVICE_ID ; 
 int NAU8825_SOFTWARE_ID_MASK ; 
 int NAU8825_SOFTWARE_ID_NAU8825 ; 
 int /*<<< orphan*/  NAU8825_XTALK_DONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct nau8825* FUNC4 (struct device*) ; 
 struct nau8825* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct nau8825*) ; 
 int /*<<< orphan*/  nau8825_component_driver ; 
 int /*<<< orphan*/  nau8825_dai ; 
 int /*<<< orphan*/  FUNC9 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC10 (struct nau8825*) ; 
 int FUNC11 (struct device*,struct nau8825*) ; 
 int /*<<< orphan*/  nau8825_regmap_config ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nau8825*) ; 
 int /*<<< orphan*/  nau8825_xtalk_work ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *i2c,
	const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct nau8825 *nau8825 = FUNC4(&i2c->dev);
	int ret, value;

	if (!nau8825) {
		nau8825 = FUNC5(dev, sizeof(*nau8825), GFP_KERNEL);
		if (!nau8825)
			return -ENOMEM;
		ret = FUNC11(dev, nau8825);
		if (ret)
			return ret;
	}

	FUNC8(i2c, nau8825);

	nau8825->regmap = FUNC6(i2c, &nau8825_regmap_config);
	if (FUNC1(nau8825->regmap))
		return FUNC2(nau8825->regmap);
	nau8825->dev = dev;
	nau8825->irq = i2c->irq;
	/* Initiate parameters, semaphore and work queue which are needed in
	 * cross talk suppression measurment function.
	 */
	nau8825->xtalk_state = NAU8825_XTALK_DONE;
	nau8825->xtalk_protect = false;
	nau8825->xtalk_baktab_initialized = false;
	FUNC15(&nau8825->xtalk_sem, 1);
	FUNC0(&nau8825->xtalk_work, nau8825_xtalk_work);

	FUNC10(nau8825);

	FUNC12(nau8825->regmap);
	ret = FUNC14(nau8825->regmap, NAU8825_REG_I2C_DEVICE_ID, &value);
	if (ret < 0) {
		FUNC3(dev, "Failed to read device id from the NAU8825: %d\n",
			ret);
		return ret;
	}
	if ((value & NAU8825_SOFTWARE_ID_MASK) !=
			NAU8825_SOFTWARE_ID_NAU8825) {
		FUNC3(dev, "Not a NAU8825 chip\n");
		return -ENODEV;
	}

	FUNC9(nau8825);

	if (i2c->irq)
		FUNC13(nau8825);

	return FUNC7(&i2c->dev,
		&nau8825_component_driver,
		&nau8825_dai, 1);
}