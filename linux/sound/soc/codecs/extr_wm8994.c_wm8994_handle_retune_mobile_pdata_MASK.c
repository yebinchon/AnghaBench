#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct snd_soc_component* component; } ;
struct TYPE_6__ {size_t items; char const** texts; } ;
struct wm8994_priv {int num_retune_mobile_texts; char const** retune_mobile_texts; TYPE_2__ hubs; TYPE_3__ retune_mobile_enum; struct wm8994* wm8994; } ;
struct wm8994_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct wm8994 {struct wm8994_pdata pdata; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol_new {int dummy; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol_new*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_kcontrol_new FUNC1 (char*,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 char** FUNC4 (char const**,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_component*,struct snd_kcontrol_new*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  wm8994_get_retune_mobile_enum ; 
 int /*<<< orphan*/  wm8994_put_retune_mobile_enum ; 

__attribute__((used)) static void FUNC7(struct wm8994_priv *wm8994)
{
	struct snd_soc_component *component = wm8994->hubs.component;
	struct wm8994 *control = wm8994->wm8994;
	struct wm8994_pdata *pdata = &control->pdata;
	struct snd_kcontrol_new controls[] = {
		FUNC1("AIF1.1 EQ Mode",
			     wm8994->retune_mobile_enum,
			     wm8994_get_retune_mobile_enum,
			     wm8994_put_retune_mobile_enum),
		FUNC1("AIF1.2 EQ Mode",
			     wm8994->retune_mobile_enum,
			     wm8994_get_retune_mobile_enum,
			     wm8994_put_retune_mobile_enum),
		FUNC1("AIF2 EQ Mode",
			     wm8994->retune_mobile_enum,
			     wm8994_get_retune_mobile_enum,
			     wm8994_put_retune_mobile_enum),
	};
	int ret, i, j;
	const char **t;

	/* We need an array of texts for the enum API but the number
	 * of texts is likely to be less than the number of
	 * configurations due to the sample rate dependency of the
	 * configurations. */
	wm8994->num_retune_mobile_texts = 0;
	wm8994->retune_mobile_texts = NULL;
	for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
		for (j = 0; j < wm8994->num_retune_mobile_texts; j++) {
			if (FUNC6(pdata->retune_mobile_cfgs[i].name,
				   wm8994->retune_mobile_texts[j]) == 0)
				break;
		}

		if (j != wm8994->num_retune_mobile_texts)
			continue;

		/* Expand the array... */
		t = FUNC4(wm8994->retune_mobile_texts,
			     sizeof(char *) *
			     (wm8994->num_retune_mobile_texts + 1),
			     GFP_KERNEL);
		if (t == NULL)
			continue;

		/* ...store the new entry... */
		t[wm8994->num_retune_mobile_texts] =
			pdata->retune_mobile_cfgs[i].name;

		/* ...and remember the new version. */
		wm8994->num_retune_mobile_texts++;
		wm8994->retune_mobile_texts = t;
	}

	FUNC2(component->dev, "Allocated %d unique ReTune Mobile names\n",
		wm8994->num_retune_mobile_texts);

	wm8994->retune_mobile_enum.items = wm8994->num_retune_mobile_texts;
	wm8994->retune_mobile_enum.texts = wm8994->retune_mobile_texts;

	ret = FUNC5(wm8994->hubs.component, controls,
				   FUNC0(controls));
	if (ret != 0)
		FUNC3(wm8994->hubs.component->dev,
			"Failed to add ReTune Mobile controls: %d\n", ret);
}