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

/* Variables and functions */
 int RT5665_NG2_DIS ; 
 int RT5665_NG2_EN ; 
 int /*<<< orphan*/  RT5665_NG2_EN_MASK ; 
 int /*<<< orphan*/  RT5665_STO_NG2_CTRL_1 ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	int ret = FUNC3(kcontrol, ucontrol);

	if (FUNC0(component, RT5665_STO_NG2_CTRL_1) & RT5665_NG2_EN) {
		FUNC1(component, RT5665_STO_NG2_CTRL_1,
			RT5665_NG2_EN_MASK, RT5665_NG2_DIS);
		FUNC1(component, RT5665_STO_NG2_CTRL_1,
			RT5665_NG2_EN_MASK, RT5665_NG2_EN);
	}

	return ret;
}