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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct max98090_priv {scalar_t__ devtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX98091 ; 
 int /*<<< orphan*/  max98090_dapm_routes ; 
 int /*<<< orphan*/  max98090_dapm_widgets ; 
 int /*<<< orphan*/  max98090_snd_controls ; 
 int /*<<< orphan*/  max98091_dapm_routes ; 
 int /*<<< orphan*/  max98091_dapm_widgets ; 
 int /*<<< orphan*/  max98091_snd_controls ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct max98090_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct max98090_priv *max98090 = FUNC3(component);
	struct snd_soc_dapm_context *dapm = FUNC2(component);

	FUNC1(component, max98090_snd_controls,
		FUNC0(max98090_snd_controls));

	if (max98090->devtype == MAX98091) {
		FUNC1(component, max98091_snd_controls,
			FUNC0(max98091_snd_controls));
	}

	FUNC5(dapm, max98090_dapm_widgets,
		FUNC0(max98090_dapm_widgets));

	FUNC4(dapm, max98090_dapm_routes,
		FUNC0(max98090_dapm_routes));

	if (max98090->devtype == MAX98091) {
		FUNC5(dapm, max98091_dapm_widgets,
			FUNC0(max98091_dapm_widgets));

		FUNC4(dapm, max98091_dapm_routes,
			FUNC0(max98091_dapm_routes));
	}

	return 0;
}