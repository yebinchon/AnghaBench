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
struct snd_soc_component {TYPE_1__* card; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {scalar_t__* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct rt1011_priv {scalar_t__ cali_done; } ;
struct TYPE_4__ {int /*<<< orphan*/  instantiated; } ;

/* Variables and functions */
 scalar_t__ SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct rt1011_priv*,int) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC2 (struct snd_soc_component*) ; 
 struct rt1011_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct rt1011_priv *rt1011 = FUNC3(component);

	if (!component->card->instantiated)
		return 0;

	rt1011->cali_done = 0;
	if (FUNC2(component) == SND_SOC_BIAS_OFF &&
		ucontrol->value.integer.value[0])
		FUNC0(rt1011, 1);

	return 0;
}