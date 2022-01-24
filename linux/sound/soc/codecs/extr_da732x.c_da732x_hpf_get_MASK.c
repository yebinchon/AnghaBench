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
struct soc_enum {unsigned int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA732X_HPF_DISABLED ; 
 int DA732X_HPF_MASK ; 
 int /*<<< orphan*/  DA732X_HPF_MUSIC ; 
#define  DA732X_HPF_MUSIC_EN 129 
 int /*<<< orphan*/  DA732X_HPF_VOICE ; 
#define  DA732X_HPF_VOICE_EN 128 
 int FUNC0 (struct snd_soc_component*,unsigned int) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct soc_enum *enum_ctrl = (struct soc_enum *)kcontrol->private_value;
	unsigned int reg = enum_ctrl->reg;
	int val;

	val = FUNC0(component, reg) & DA732X_HPF_MASK;

	switch (val) {
	case DA732X_HPF_VOICE_EN:
		ucontrol->value.enumerated.item[0] = DA732X_HPF_VOICE;
		break;
	case DA732X_HPF_MUSIC_EN:
		ucontrol->value.enumerated.item[0] = DA732X_HPF_MUSIC;
		break;
	default:
		ucontrol->value.enumerated.item[0] = DA732X_HPF_DISABLED;
		break;
	}

	return 0;
}