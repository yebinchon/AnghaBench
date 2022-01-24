#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct max98926_priv {int interleave_mode; int /*<<< orphan*/  regmap; scalar_t__ i_slot; scalar_t__ v_slot; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX98926_DAI_IMON_SLOT_1E_1F ; 
 scalar_t__ MAX98926_DAI_VMON_SLOT_1E_1F ; 
 int /*<<< orphan*/  MAX98926_VERSION ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 struct max98926_priv* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max98926_priv*) ; 
 int /*<<< orphan*/  max98926_dai ; 
 int /*<<< orphan*/  max98926_regmap ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  soc_component_dev_max98926 ; 

__attribute__((used)) static int FUNC12(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	int ret, reg;
	u32 value;
	struct max98926_priv *max98926;

	max98926 = FUNC5(&i2c->dev,
			sizeof(*max98926), GFP_KERNEL);
	if (!max98926)
		return -ENOMEM;

	FUNC8(i2c, max98926);
	max98926->regmap = FUNC6(i2c, &max98926_regmap);
	if (FUNC1(max98926->regmap)) {
		ret = FUNC2(max98926->regmap);
		FUNC3(&i2c->dev,
				"Failed to allocate regmap: %d\n", ret);
		goto err_out;
	}
	if (FUNC9(i2c->dev.of_node, "interleave-mode"))
		max98926->interleave_mode = true;

	if (!FUNC10(i2c->dev.of_node, "vmon-slot-no", &value)) {
		if (value > MAX98926_DAI_VMON_SLOT_1E_1F) {
			FUNC3(&i2c->dev, "vmon slot number is wrong:\n");
			return -EINVAL;
		}
		max98926->v_slot = value;
	}
	if (!FUNC10(i2c->dev.of_node, "imon-slot-no", &value)) {
		if (value > MAX98926_DAI_IMON_SLOT_1E_1F) {
			FUNC3(&i2c->dev, "imon slot number is wrong:\n");
			return -EINVAL;
		}
		max98926->i_slot = value;
	}
	ret = FUNC11(max98926->regmap,
			MAX98926_VERSION, &reg);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to read: %x\n", reg);
		return ret;
	}

	ret = FUNC7(&i2c->dev,
			&soc_component_dev_max98926,
			max98926_dai, FUNC0(max98926_dai));
	if (ret < 0)
		FUNC3(&i2c->dev,
				"Failed to register component: %d\n", ret);
	FUNC4(&i2c->dev, "device version: %x\n", reg);
err_out:
	return ret;
}