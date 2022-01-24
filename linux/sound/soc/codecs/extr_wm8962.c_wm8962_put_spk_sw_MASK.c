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
 int /*<<< orphan*/  WM8962_PWR_MGMT_2 ; 
 int WM8962_SPKOUTL_PGA_ENA ; 
 int /*<<< orphan*/  WM8962_SPKOUTL_VOLUME ; 
 int WM8962_SPKOUTR_PGA_ENA ; 
 int /*<<< orphan*/  WM8962_SPKOUTR_VOLUME ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	int ret;

	/* Apply the update (if any) */
        ret = FUNC3(kcontrol, ucontrol);
	if (ret == 0)
		return 0;

	/* If the left PGA is enabled hit that VU bit... */
	ret = FUNC0(component, WM8962_PWR_MGMT_2);
	if (ret & WM8962_SPKOUTL_PGA_ENA) {
		FUNC1(component, WM8962_SPKOUTL_VOLUME,
			      FUNC0(component, WM8962_SPKOUTL_VOLUME));
		return 1;
	}

	/* ...otherwise the right.  The VU is stereo. */
	if (ret & WM8962_SPKOUTR_PGA_ENA)
		FUNC1(component, WM8962_SPKOUTR_VOLUME,
			      FUNC0(component, WM8962_SPKOUTR_VOLUME));

	return 1;
}