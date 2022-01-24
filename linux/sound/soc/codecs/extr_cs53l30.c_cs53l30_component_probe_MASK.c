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
struct cs53l30_private {scalar_t__ use_sdout2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs53l30_dapm_routes_sdout1 ; 
 int /*<<< orphan*/  cs53l30_dapm_routes_sdout2 ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct cs53l30_private* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct cs53l30_private *priv = FUNC2(component);
	struct snd_soc_dapm_context *dapm = FUNC1(component);

	if (priv->use_sdout2)
		FUNC3(dapm, cs53l30_dapm_routes_sdout2,
					FUNC0(cs53l30_dapm_routes_sdout2));
	else
		FUNC3(dapm, cs53l30_dapm_routes_sdout1,
					FUNC0(cs53l30_dapm_routes_sdout1));

	return 0;
}