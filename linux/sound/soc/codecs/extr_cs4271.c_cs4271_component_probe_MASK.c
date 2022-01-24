#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {TYPE_1__* dev; } ;
struct cs4271_private {int enable_soft_reset; int /*<<< orphan*/  regmap; int /*<<< orphan*/  supplies; } ;
struct cs4271_platform_data {int amutec_eq_bmutec; int enable_soft_reset; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; struct cs4271_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4271_MODE2 ; 
 int CS4271_MODE2_CPEN ; 
 int CS4271_MODE2_MUTECAEQUB ; 
 int CS4271_MODE2_PDN ; 
 int /*<<< orphan*/  cs4271_dt_ids ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs4271_private* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct cs4271_private *cs4271 = FUNC8(component);
	struct cs4271_platform_data *cs4271plat = component->dev->platform_data;
	int ret;
	bool amutec_eq_bmutec = false;

#ifdef CONFIG_OF
	if (of_match_device(cs4271_dt_ids, component->dev)) {
		if (of_get_property(component->dev->of_node,
				     "cirrus,amutec-eq-bmutec", NULL))
			amutec_eq_bmutec = true;

		if (of_get_property(component->dev->of_node,
				     "cirrus,enable-soft-reset", NULL))
			cs4271->enable_soft_reset = true;
	}
#endif

	ret = FUNC7(FUNC0(cs4271->supplies),
				    cs4271->supplies);
	if (ret < 0) {
		FUNC2(component->dev, "Failed to enable regulators: %d\n", ret);
		return ret;
	}

	if (cs4271plat) {
		amutec_eq_bmutec = cs4271plat->amutec_eq_bmutec;
		cs4271->enable_soft_reset = cs4271plat->enable_soft_reset;
	}

	/* Reset codec */
	FUNC1(component);

	ret = FUNC5(cs4271->regmap);
	if (ret < 0)
		return ret;

	ret = FUNC6(cs4271->regmap, CS4271_MODE2,
				 CS4271_MODE2_PDN | CS4271_MODE2_CPEN,
				 CS4271_MODE2_PDN | CS4271_MODE2_CPEN);
	if (ret < 0)
		return ret;
	ret = FUNC6(cs4271->regmap, CS4271_MODE2,
				 CS4271_MODE2_PDN, 0);
	if (ret < 0)
		return ret;
	/* Power-up sequence requires 85 uS */
	FUNC9(85);

	if (amutec_eq_bmutec)
		FUNC6(cs4271->regmap, CS4271_MODE2,
				   CS4271_MODE2_MUTECAEQUB,
				   CS4271_MODE2_MUTECAEQUB);

	return 0;
}