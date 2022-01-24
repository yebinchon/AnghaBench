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
struct wm8804_priv {TYPE_1__* supplies; int /*<<< orphan*/  reset; TYPE_3__* disable_nb; struct regmap* regmap; struct device* dev; } ;
struct regulator {int dummy; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_6__ {struct regulator* consumer; int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8804_DEVID2 ; 
 int /*<<< orphan*/  WM8804_DEVREV ; 
 int /*<<< orphan*/  WM8804_RST_DEVID1 ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct wm8804_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct wm8804_priv* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,TYPE_1__*) ; 
 int FUNC9 (struct regulator*,TYPE_3__*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int FUNC15 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_1__*) ; 
 int FUNC17 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8804 ; 
 int /*<<< orphan*/  wm8804_dai ; 
 int /*<<< orphan*/  wm8804_regulator_event_0 ; 
 int /*<<< orphan*/  wm8804_regulator_event_1 ; 
 int FUNC18 (struct wm8804_priv*) ; 
 int /*<<< orphan*/ * wm8804_supply_names ; 

int FUNC19(struct device *dev, struct regmap *regmap)
{
	struct wm8804_priv *wm8804;
	unsigned int id1, id2;
	int i, ret;

	wm8804 = FUNC7(dev, sizeof(*wm8804), GFP_KERNEL);
	if (!wm8804)
		return -ENOMEM;

	FUNC5(dev, wm8804);

	wm8804->dev = dev;
	wm8804->regmap = regmap;

	wm8804->reset = FUNC6(dev, "wlf,reset",
						GPIOD_OUT_LOW);
	if (FUNC1(wm8804->reset)) {
		ret = FUNC2(wm8804->reset);
		FUNC3(dev, "Failed to get reset line: %d\n", ret);
		return ret;
	}

	for (i = 0; i < FUNC0(wm8804->supplies); i++)
		wm8804->supplies[i].supply = wm8804_supply_names[i];

	ret = FUNC8(dev, FUNC0(wm8804->supplies),
				      wm8804->supplies);
	if (ret) {
		FUNC3(dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	wm8804->disable_nb[0].notifier_call = wm8804_regulator_event_0;
	wm8804->disable_nb[1].notifier_call = wm8804_regulator_event_1;

	/* This should really be moved into the regulator core */
	for (i = 0; i < FUNC0(wm8804->supplies); i++) {
		struct regulator *regulator = wm8804->supplies[i].consumer;

		ret = FUNC9(regulator,
						       &wm8804->disable_nb[i]);
		if (ret != 0) {
			FUNC3(dev,
				"Failed to register regulator notifier: %d\n",
				ret);
			return ret;
		}
	}

	ret = FUNC17(FUNC0(wm8804->supplies),
				    wm8804->supplies);
	if (ret) {
		FUNC3(dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	FUNC11(wm8804->reset, 1);

	ret = FUNC15(regmap, WM8804_RST_DEVID1, &id1);
	if (ret < 0) {
		FUNC3(dev, "Failed to read device ID: %d\n", ret);
		goto err_reg_enable;
	}

	ret = FUNC15(regmap, WM8804_DEVID2, &id2);
	if (ret < 0) {
		FUNC3(dev, "Failed to read device ID: %d\n", ret);
		goto err_reg_enable;
	}

	id2 = (id2 << 8) | id1;

	if (id2 != 0x8805) {
		FUNC3(dev, "Invalid device ID: %#x\n", id2);
		ret = -EINVAL;
		goto err_reg_enable;
	}

	ret = FUNC15(regmap, WM8804_DEVREV, &id1);
	if (ret < 0) {
		FUNC3(dev, "Failed to read device revision: %d\n",
			ret);
		goto err_reg_enable;
	}
	FUNC4(dev, "revision %c\n", id1 + 'A');

	if (!wm8804->reset) {
		ret = FUNC18(wm8804);
		if (ret < 0) {
			FUNC3(dev, "Failed to issue reset: %d\n", ret);
			goto err_reg_enable;
		}
	}

	ret = FUNC10(dev, &soc_component_dev_wm8804,
				     &wm8804_dai, 1);
	if (ret < 0) {
		FUNC3(dev, "Failed to register CODEC: %d\n", ret);
		goto err_reg_enable;
	}

	FUNC14(dev);
	FUNC12(dev);
	FUNC13(dev);

	return 0;

err_reg_enable:
	FUNC16(FUNC0(wm8804->supplies), wm8804->supplies);
	return ret;
}