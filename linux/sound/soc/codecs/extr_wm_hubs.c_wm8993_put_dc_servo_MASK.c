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
struct wm_hubs_data {scalar_t__ no_series_update; scalar_t__ dcs_codes_r; scalar_t__ dcs_codes_l; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int WM8993_DCS_TRIG_SINGLE_0 ; 
 int WM8993_DCS_TRIG_SINGLE_1 ; 
 int /*<<< orphan*/  WM8993_DC_SERVO_0 ; 
 int WM8993_HPOUT1L_ENA ; 
 int WM8993_HPOUT1R_ENA ; 
 int /*<<< orphan*/  WM8993_POWER_MANAGEMENT_1 ; 
 struct wm_hubs_data* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 int FUNC4 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct wm_hubs_data *hubs = FUNC0(component);
	int ret;

	ret = FUNC4(kcontrol, ucontrol);

	/* If we're applying an offset correction then updating the
	 * callibration would be likely to introduce further offsets. */
	if (hubs->dcs_codes_l || hubs->dcs_codes_r || hubs->no_series_update)
		return ret;

	/* Only need to do this if the outputs are active */
	if (FUNC1(component, WM8993_POWER_MANAGEMENT_1)
	    & (WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA))
		FUNC2(component,
				    WM8993_DC_SERVO_0,
				    WM8993_DCS_TRIG_SINGLE_0 |
				    WM8993_DCS_TRIG_SINGLE_1,
				    WM8993_DCS_TRIG_SINGLE_0 |
				    WM8993_DCS_TRIG_SINGLE_1);

	return ret;
}