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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct rt5645_priv {int /*<<< orphan*/  rcclock_work; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5645_MICBIAS ; 
 int /*<<< orphan*/  RT5645_PWR_CLK25M_MASK ; 
 int /*<<< orphan*/  RT5645_PWR_CLK25M_PU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 struct rt5645_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct rt5645_priv *rt5645 = FUNC4(component);
	int ret;

	FUNC2(rt5645->regmap, RT5645_MICBIAS,
		RT5645_PWR_CLK25M_MASK, RT5645_PWR_CLK25M_PU);

	ret = FUNC5(kcontrol, ucontrol);

	FUNC0(system_power_efficient_wq, &rt5645->rcclock_work,
		FUNC1(200));

	return ret;
}