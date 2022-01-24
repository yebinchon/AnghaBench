#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tas5086_private {int pwm_start_mid_z; int charge_period; int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAS5086_MASTER_VOL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tas5086_private* FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int /*<<< orphan*/  tas5086_dt_ids ; 
 int FUNC11 (TYPE_1__*,struct tas5086_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct tas5086_private*) ; 

__attribute__((used)) static int FUNC13(struct snd_soc_component *component)
{
	struct tas5086_private *priv = FUNC9(component);
	int i, ret;

	ret = FUNC8(FUNC0(priv->supplies), priv->supplies);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to enable regulators: %d\n", ret);
		return ret;
	}

	priv->pwm_start_mid_z = 0;
	priv->charge_period = 1300000; /* hardware default is 1300 ms */

	if (FUNC3(FUNC4(tas5086_dt_ids), component->dev)) {
		struct device_node *of_node = component->dev->of_node;

		FUNC5(of_node, "ti,charge-period",
				     &priv->charge_period);

		for (i = 0; i < 6; i++) {
			char name[25];

			FUNC10(name, sizeof(name),
				 "ti,mid-z-channel-%d", i + 1);

			if (FUNC2(of_node, name, NULL) != NULL)
				priv->pwm_start_mid_z |= 1 << i;
		}
	}

	FUNC12(priv);
	ret = FUNC11(component->dev, priv);
	if (ret < 0)
		goto exit_disable_regulators;

	/* set master volume to 0 dB */
	ret = FUNC6(priv->regmap, TAS5086_MASTER_VOL, 0x30);
	if (ret < 0)
		goto exit_disable_regulators;

	return 0;

exit_disable_regulators:
	FUNC7(FUNC0(priv->supplies), priv->supplies);

	return ret;
}