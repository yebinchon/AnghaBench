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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cs35l36_private {int ldm_mode_sel; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int CS35L36_NG_AMP_EN_MASK ; 
 int /*<<< orphan*/  CS35L36_NG_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct cs35l36_private* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
			FUNC2(kcontrol);
	struct cs35l36_private *cs35l36 =
			FUNC1(component);
	int val = (ucontrol->value.integer.value[0]) ? CS35L36_NG_AMP_EN_MASK :
						       0;

	cs35l36->ldm_mode_sel = val;

	FUNC0(cs35l36->regmap, CS35L36_NG_CFG,
			   CS35L36_NG_AMP_EN_MASK, val);

	return 0;
}