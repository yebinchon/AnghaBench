#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int items; int /*<<< orphan*/ * texts; } ;
struct wm8904_priv {int /*<<< orphan*/ * drc_texts; TYPE_2__ drc_enum; struct wm8904_pdata* pdata; } ;
struct wm8904_pdata {int num_drc_cfgs; int num_retune_mobile_cfgs; TYPE_1__* drc_cfgs; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol_new {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct snd_kcontrol_new*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_kcontrol_new FUNC1 (char*,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_component*,struct snd_kcontrol_new*,int) ; 
 struct wm8904_priv* FUNC6 (struct snd_soc_component*) ; 
 struct snd_kcontrol_new* wm8904_eq_controls ; 
 int /*<<< orphan*/  wm8904_get_drc_enum ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  wm8904_put_drc_enum ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC9(struct snd_soc_component *component)
{
	struct wm8904_priv *wm8904 = FUNC6(component);
	struct wm8904_pdata *pdata = wm8904->pdata;
	int ret, i;

	if (!pdata) {
		FUNC5(component, wm8904_eq_controls,
				     FUNC0(wm8904_eq_controls));
		return;
	}

	FUNC2(component->dev, "%d DRC configurations\n", pdata->num_drc_cfgs);

	if (pdata->num_drc_cfgs) {
		struct snd_kcontrol_new control =
			FUNC1("DRC Mode", wm8904->drc_enum,
				     wm8904_get_drc_enum, wm8904_put_drc_enum);

		/* We need an array of texts for the enum API */
		wm8904->drc_texts = FUNC4(pdata->num_drc_cfgs,
						  sizeof(char *),
						  GFP_KERNEL);
		if (!wm8904->drc_texts)
			return;

		for (i = 0; i < pdata->num_drc_cfgs; i++)
			wm8904->drc_texts[i] = pdata->drc_cfgs[i].name;

		wm8904->drc_enum.items = pdata->num_drc_cfgs;
		wm8904->drc_enum.texts = wm8904->drc_texts;

		ret = FUNC5(component, &control, 1);
		if (ret != 0)
			FUNC3(component->dev,
				"Failed to add DRC mode control: %d\n", ret);

		FUNC8(component);
	}

	FUNC2(component->dev, "%d ReTune Mobile configurations\n",
		pdata->num_retune_mobile_cfgs);

	if (pdata->num_retune_mobile_cfgs)
		FUNC7(component);
	else
		FUNC5(component, wm8904_eq_controls,
				     FUNC0(wm8904_eq_controls));
}