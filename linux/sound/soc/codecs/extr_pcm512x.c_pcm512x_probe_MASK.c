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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct regmap {int dummy; } ;
struct pcm512x_priv {int pll_in; int pll_out; TYPE_1__* supplies; int /*<<< orphan*/  sclk; struct regmap* regmap; TYPE_3__* supply_nb; int /*<<< orphan*/  mutex; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_6__ {int /*<<< orphan*/  consumer; int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCM512x_POWER ; 
 int /*<<< orphan*/  PCM512x_RESET ; 
 int /*<<< orphan*/  PCM512x_RQST ; 
 int PCM512x_RSTM ; 
 int PCM512x_RSTR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct pcm512x_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 struct pcm512x_priv* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct device_node const*,char*,int*) ; 
 int /*<<< orphan*/  pcm512x_component_driver ; 
 int /*<<< orphan*/  pcm512x_dai ; 
 int /*<<< orphan*/  pcm512x_regulator_event_0 ; 
 int /*<<< orphan*/  pcm512x_regulator_event_1 ; 
 int /*<<< orphan*/  pcm512x_regulator_event_2 ; 
 int /*<<< orphan*/ * pcm512x_supply_names ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int FUNC18 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int,TYPE_1__*) ; 
 int FUNC21 (int,TYPE_1__*) ; 

int FUNC22(struct device *dev, struct regmap *regmap)
{
	struct pcm512x_priv *pcm512x;
	int i, ret;

	pcm512x = FUNC8(dev, sizeof(struct pcm512x_priv), GFP_KERNEL);
	if (!pcm512x)
		return -ENOMEM;

	FUNC12(&pcm512x->mutex);

	FUNC6(dev, pcm512x);
	pcm512x->regmap = regmap;

	for (i = 0; i < FUNC0(pcm512x->supplies); i++)
		pcm512x->supplies[i].supply = pcm512x_supply_names[i];

	ret = FUNC9(dev, FUNC0(pcm512x->supplies),
				      pcm512x->supplies);
	if (ret != 0) {
		FUNC5(dev, "Failed to get supplies: %d\n", ret);
		return ret;
	}

	pcm512x->supply_nb[0].notifier_call = pcm512x_regulator_event_0;
	pcm512x->supply_nb[1].notifier_call = pcm512x_regulator_event_1;
	pcm512x->supply_nb[2].notifier_call = pcm512x_regulator_event_2;

	for (i = 0; i < FUNC0(pcm512x->supplies); i++) {
		ret = FUNC10(
						pcm512x->supplies[i].consumer,
						&pcm512x->supply_nb[i]);
		if (ret != 0) {
			FUNC5(dev,
				"Failed to register regulator notifier: %d\n",
				ret);
		}
	}

	ret = FUNC21(FUNC0(pcm512x->supplies),
				    pcm512x->supplies);
	if (ret != 0) {
		FUNC5(dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	/* Reset the device, verifying I/O in the process for I2C */
	ret = FUNC19(regmap, PCM512x_RESET,
			   PCM512x_RSTM | PCM512x_RSTR);
	if (ret != 0) {
		FUNC5(dev, "Failed to reset device: %d\n", ret);
		goto err;
	}

	ret = FUNC19(regmap, PCM512x_RESET, 0);
	if (ret != 0) {
		FUNC5(dev, "Failed to reset device: %d\n", ret);
		goto err;
	}

	pcm512x->sclk = FUNC7(dev, NULL);
	if (FUNC2(pcm512x->sclk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (!FUNC1(pcm512x->sclk)) {
		ret = FUNC4(pcm512x->sclk);
		if (ret != 0) {
			FUNC5(dev, "Failed to enable SCLK: %d\n", ret);
			return ret;
		}
	}

	/* Default to standby mode */
	ret = FUNC18(pcm512x->regmap, PCM512x_POWER,
				 PCM512x_RQST, PCM512x_RQST);
	if (ret != 0) {
		FUNC5(dev, "Failed to request standby: %d\n",
			ret);
		goto err_clk;
	}

	FUNC17(dev);
	FUNC15(dev);
	FUNC16(dev);

#ifdef CONFIG_OF
	if (dev->of_node) {
		const struct device_node *np = dev->of_node;
		u32 val;

		if (of_property_read_u32(np, "pll-in", &val) >= 0) {
			if (val > 6) {
				dev_err(dev, "Invalid pll-in\n");
				ret = -EINVAL;
				goto err_clk;
			}
			pcm512x->pll_in = val;
		}

		if (of_property_read_u32(np, "pll-out", &val) >= 0) {
			if (val > 6) {
				dev_err(dev, "Invalid pll-out\n");
				ret = -EINVAL;
				goto err_clk;
			}
			pcm512x->pll_out = val;
		}

		if (!pcm512x->pll_in != !pcm512x->pll_out) {
			dev_err(dev,
				"Error: both pll-in and pll-out, or none\n");
			ret = -EINVAL;
			goto err_clk;
		}
		if (pcm512x->pll_in && pcm512x->pll_in == pcm512x->pll_out) {
			dev_err(dev, "Error: pll-in == pll-out\n");
			ret = -EINVAL;
			goto err_clk;
		}
	}
#endif

	ret = FUNC11(dev, &pcm512x_component_driver,
				    &pcm512x_dai, 1);
	if (ret != 0) {
		FUNC5(dev, "Failed to register CODEC: %d\n", ret);
		goto err_pm;
	}

	return 0;

err_pm:
	FUNC14(dev);
err_clk:
	if (!FUNC1(pcm512x->sclk))
		FUNC3(pcm512x->sclk);
err:
	FUNC20(FUNC0(pcm512x->supplies),
				     pcm512x->supplies);
	return ret;
}