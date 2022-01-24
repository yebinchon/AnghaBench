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
typedef  int u16 ;
struct soc_mixer_control {int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_component*,int) ; 
 int FUNC1 (struct snd_soc_component*,int,int) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	int reg = mc->reg;
	int ret;
	u16 val;

	ret = FUNC3(kcontrol, ucontrol);
	if (ret < 0)
		return ret;

	/* now hit the volume update bits (always bit 8) */
	val = FUNC0(component, reg);
	return FUNC1(component, reg, val | 0x0100);
}