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
struct wm_hubs_data {int /*<<< orphan*/  dcs_done; int /*<<< orphan*/  dcs_cache; struct snd_soc_component* component; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  analogue_routes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lineout1_diff_routes ; 
 int /*<<< orphan*/  lineout1_se_routes ; 
 int /*<<< orphan*/  lineout2_diff_routes ; 
 int /*<<< orphan*/  lineout2_se_routes ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct wm_hubs_data* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct snd_soc_component *component,
				int lineout1_diff, int lineout2_diff)
{
	struct wm_hubs_data *hubs = FUNC4(component);
	struct snd_soc_dapm_context *dapm = FUNC3(component);

	hubs->component = component;

	FUNC1(&hubs->dcs_cache);
	FUNC2(&hubs->dcs_done);

	FUNC5(dapm, analogue_routes,
				FUNC0(analogue_routes));

	if (lineout1_diff)
		FUNC5(dapm,
					lineout1_diff_routes,
					FUNC0(lineout1_diff_routes));
	else
		FUNC5(dapm,
					lineout1_se_routes,
					FUNC0(lineout1_se_routes));

	if (lineout2_diff)
		FUNC5(dapm,
					lineout2_diff_routes,
					FUNC0(lineout2_diff_routes));
	else
		FUNC5(dapm,
					lineout2_se_routes,
					FUNC0(lineout2_se_routes));

	return 0;
}