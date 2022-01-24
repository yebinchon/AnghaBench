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
struct da7218_priv {scalar_t__ alc_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 struct da7218_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	struct da7218_priv *da7218 = FUNC1(component);
	int ret;

	ret = FUNC3(kcontrol, ucontrol);

	/*
	 * If ALC in operation and value of control has been updated,
	 * make sure calibrated offsets are updated.
	 */
	if ((ret == 1) && (da7218->alc_en))
		FUNC0(component);

	return ret;
}