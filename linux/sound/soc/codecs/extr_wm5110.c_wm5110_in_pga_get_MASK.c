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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 struct snd_soc_dapm_context* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct snd_soc_dapm_context *dapm = FUNC0(component);
	int ret;

	/*
	 * PGA Volume is also used as part of the enable sequence, so
	 * usage of it should be avoided whilst that is running.
	 */
	FUNC1(dapm);

	ret = FUNC3(kcontrol, ucontrol);

	FUNC2(dapm);

	return ret;
}