#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int dummy; } ;
struct madera {int /*<<< orphan*/  dapm_ptr_lock; int /*<<< orphan*/  dapm; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/ * adsp; struct madera* madera; } ;
struct cs47l90 {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS47L90_MONO_OUTPUTS ; 
 int CS47L90_NUM_ADSP ; 
 int /*<<< orphan*/  madera_adsp_rate_controls ; 
 int FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 
 struct cs47l90* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct cs47l90 *cs47l90 = FUNC7(component);
	struct madera *madera = cs47l90->core.madera;
	int ret, i;

	FUNC8(component, madera->regmap);

	FUNC2(&madera->dapm_ptr_lock);
	madera->dapm = FUNC6(component);
	FUNC3(&madera->dapm_ptr_lock);

	ret = FUNC0(component);
	if (ret)
		return ret;

	ret = FUNC1(component, CS47L90_MONO_OUTPUTS);
	if (ret)
		return ret;

	FUNC5(component, "HAPTICS");

	ret = FUNC4(component,
					     madera_adsp_rate_controls,
					     CS47L90_NUM_ADSP);
	if (ret)
		return ret;

	for (i = 0; i < CS47L90_NUM_ADSP; i++)
		FUNC9(&cs47l90->core.adsp[i], component);

	return 0;
}