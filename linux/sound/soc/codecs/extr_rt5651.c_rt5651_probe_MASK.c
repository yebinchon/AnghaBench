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
struct rt5651_priv {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5651_PWR_ANLG1 ; 
 int /*<<< orphan*/  RT5651_PWR_LDO_DVO_1_2V ; 
 int /*<<< orphan*/  RT5651_PWR_LDO_DVO_MASK ; 
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct rt5651_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct rt5651_priv *rt5651 = FUNC2(component);

	rt5651->component = component;

	FUNC3(component, RT5651_PWR_ANLG1,
		RT5651_PWR_LDO_DVO_MASK, RT5651_PWR_LDO_DVO_1_2V);

	FUNC1(component, SND_SOC_BIAS_OFF);

	FUNC0(component);

	return 0;
}