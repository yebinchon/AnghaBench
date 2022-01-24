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
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; struct aic32x4_pdata* platform_data; } ;
struct aic32x4_priv {int swapdacs; int rstn_gpio; char* mclk_name; scalar_t__ micpga_routing; scalar_t__ power_cfg; struct device* dev; } ;
struct aic32x4_pdata {int swapdacs; int rstn_gpio; scalar_t__ micpga_routing; scalar_t__ power_cfg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  aic32x4_dai ; 
 int /*<<< orphan*/  FUNC2 (struct aic32x4_priv*) ; 
 int FUNC3 (struct aic32x4_priv*,struct device_node*) ; 
 int FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,struct aic32x4_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct aic32x4_priv*) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,char*) ; 
 struct aic32x4_priv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  soc_component_dev_aic32x4 ; 

int FUNC12(struct device *dev, struct regmap *regmap)
{
	struct aic32x4_priv *aic32x4;
	struct aic32x4_pdata *pdata = dev->platform_data;
	struct device_node *np = dev->of_node;
	int ret;

	if (FUNC0(regmap))
		return FUNC1(regmap);

	aic32x4 = FUNC9(dev, sizeof(struct aic32x4_priv),
				   GFP_KERNEL);
	if (aic32x4 == NULL)
		return -ENOMEM;

	aic32x4->dev = dev;
	FUNC7(dev, aic32x4);

	if (pdata) {
		aic32x4->power_cfg = pdata->power_cfg;
		aic32x4->swapdacs = pdata->swapdacs;
		aic32x4->micpga_routing = pdata->micpga_routing;
		aic32x4->rstn_gpio = pdata->rstn_gpio;
		aic32x4->mclk_name = "mclk";
	} else if (np) {
		ret = FUNC3(aic32x4, np);
		if (ret) {
			FUNC6(dev, "Failed to parse DT node\n");
			return ret;
		}
	} else {
		aic32x4->power_cfg = 0;
		aic32x4->swapdacs = false;
		aic32x4->micpga_routing = 0;
		aic32x4->rstn_gpio = -1;
		aic32x4->mclk_name = "mclk";
	}

	ret = FUNC4(dev, aic32x4->mclk_name);
	if (ret)
		return ret;

	if (FUNC11(aic32x4->rstn_gpio)) {
		ret = FUNC8(dev, aic32x4->rstn_gpio,
				GPIOF_OUT_INIT_LOW, "tlv320aic32x4 rstn");
		if (ret != 0)
			return ret;
	}

	ret = FUNC5(dev, aic32x4);
	if (ret) {
		FUNC6(dev, "Failed to setup regulators\n");
		return ret;
	}

	ret = FUNC10(dev,
			&soc_component_dev_aic32x4, &aic32x4_dai, 1);
	if (ret) {
		FUNC6(dev, "Failed to register component\n");
		FUNC2(aic32x4);
		return ret;
	}

	return 0;
}