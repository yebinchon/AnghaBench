#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct max9860_priv {int psclk; unsigned long pclk_rate; struct clk* dvddio; struct clk* regmap; TYPE_3__ dvddio_nb; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {int num_reg_defaults; TYPE_1__* reg_defaults; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg; int /*<<< orphan*/  def; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  MAX9860_INTRSTATUS ; 
 int MAX9860_PSCLK_SHIFT ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,char*) ; 
 unsigned long FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct max9860_priv*) ; 
 struct max9860_priv* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct clk* FUNC9 (struct i2c_client*,TYPE_2__*) ; 
 struct clk* FUNC10 (struct device*,char*) ; 
 int FUNC11 (struct clk*,TYPE_3__*) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  max9860_component_driver ; 
 int /*<<< orphan*/  max9860_dai ; 
 int /*<<< orphan*/  max9860_dvddio_event ; 
 TYPE_2__ max9860_regmap ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct clk*,int) ; 
 int FUNC18 (struct clk*,int /*<<< orphan*/ ,int*) ; 
 int FUNC19 (struct clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct clk*) ; 
 int FUNC21 (struct clk*) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *i2c)
{
	struct device *dev = &i2c->dev;
	struct max9860_priv *max9860;
	int ret;
	struct clk *mclk;
	unsigned long mclk_rate;
	int i;
	int intr;

	max9860 = FUNC8(dev, sizeof(struct max9860_priv), GFP_KERNEL);
	if (!max9860)
		return -ENOMEM;

	max9860->dvddio = FUNC10(dev, "DVDDIO");
	if (FUNC0(max9860->dvddio)) {
		ret = FUNC1(max9860->dvddio);
		if (ret != -EPROBE_DEFER)
			FUNC6(dev, "Failed to get DVDDIO supply: %d\n", ret);
		return ret;
	}

	max9860->dvddio_nb.notifier_call = max9860_dvddio_event;

	ret = FUNC11(max9860->dvddio,
					       &max9860->dvddio_nb);
	if (ret)
		FUNC6(dev, "Failed to register DVDDIO notifier: %d\n", ret);

	ret = FUNC21(max9860->dvddio);
	if (ret != 0) {
		FUNC6(dev, "Failed to enable DVDDIO: %d\n", ret);
		return ret;
	}

	max9860->regmap = FUNC9(i2c, &max9860_regmap);
	if (FUNC0(max9860->regmap)) {
		ret = FUNC1(max9860->regmap);
		goto err_regulator;
	}

	FUNC7(dev, max9860);

	/*
	 * mclk has to be in the 10MHz to 60MHz range.
	 * psclk is used to scale mclk into pclk so that
	 * pclk is in the 10MHz to 20MHz range.
	 */
	mclk = FUNC2(dev, "mclk");

	if (FUNC0(mclk)) {
		ret = FUNC1(mclk);
		if (ret != -EPROBE_DEFER)
			FUNC6(dev, "Failed to get MCLK: %d\n", ret);
		goto err_regulator;
	}

	mclk_rate = FUNC3(mclk);
	FUNC4(mclk);

	if (mclk_rate > 60000000 || mclk_rate < 10000000) {
		FUNC6(dev, "Bad mclk %luHz (needs 10MHz - 60MHz)\n",
			mclk_rate);
		ret = -EINVAL;
		goto err_regulator;
	}
	if (mclk_rate >= 40000000)
		max9860->psclk = 3;
	else if (mclk_rate >= 20000000)
		max9860->psclk = 2;
	else
		max9860->psclk = 1;
	max9860->pclk_rate = mclk_rate >> (max9860->psclk - 1);
	max9860->psclk <<= MAX9860_PSCLK_SHIFT;
	FUNC5(dev, "mclk %lu pclk %lu\n", mclk_rate, max9860->pclk_rate);

	FUNC17(max9860->regmap, true);
	for (i = 0; i < max9860_regmap.num_reg_defaults; ++i) {
		ret = FUNC19(max9860->regmap,
				   max9860_regmap.reg_defaults[i].reg,
				   max9860_regmap.reg_defaults[i].def);
		if (ret) {
			FUNC6(dev, "Failed to initialize register %u: %d\n",
				max9860_regmap.reg_defaults[i].reg, ret);
			goto err_regulator;
		}
	}
	FUNC17(max9860->regmap, false);

	ret = FUNC18(max9860->regmap, MAX9860_INTRSTATUS, &intr);
	if (ret) {
		FUNC6(dev, "Failed to clear INTRSTATUS: %d\n", ret);
		goto err_regulator;
	}

	FUNC16(dev);
	FUNC14(dev);
	FUNC15(dev);

	ret = FUNC12(dev, &max9860_component_driver,
					      &max9860_dai, 1);
	if (ret) {
		FUNC6(dev, "Failed to register CODEC: %d\n", ret);
		goto err_pm;
	}

	return 0;

err_pm:
	FUNC13(dev);
err_regulator:
	FUNC20(max9860->dvddio);
	return ret;
}