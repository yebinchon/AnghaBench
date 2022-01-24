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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct ak4118_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  reset; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4118_REG_INT1_MASK ; 
 int /*<<< orphan*/  AK4118_REG_RX_DETECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ak4118_iec958_controls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ak4118_priv* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct ak4118_priv *ak4118 = FUNC5(component);
	int ret = 0;

	ak4118->component = component;

	/* release reset */
	FUNC2(ak4118->reset, 0);

	/* unmask all int1 sources */
	ret = FUNC3(ak4118->regmap, AK4118_REG_INT1_MASK, 0x00);
	if (ret < 0) {
		FUNC1(component->dev,
			"failed to write regmap 0x%x 0x%x: %d\n",
			AK4118_REG_INT1_MASK, 0x00, ret);
		return ret;
	}

	/* rx detect enable on all channels */
	ret = FUNC3(ak4118->regmap, AK4118_REG_RX_DETECT, 0xff);
	if (ret < 0) {
		FUNC1(component->dev,
			"failed to write regmap 0x%x 0x%x: %d\n",
			AK4118_REG_RX_DETECT, 0xff, ret);
		return ret;
	}

	ret = FUNC4(component, ak4118_iec958_controls,
					 FUNC0(ak4118_iec958_controls));
	if (ret) {
		FUNC1(component->dev,
			"failed to add component kcontrols: %d\n", ret);
		return ret;
	}

	return 0;
}