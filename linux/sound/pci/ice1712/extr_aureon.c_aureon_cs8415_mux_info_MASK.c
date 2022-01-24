#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;
struct snd_ctl_elem_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71 ; 
 int FUNC0 (struct snd_ctl_elem_info*,int,int,char const* const*) ; 
 struct snd_ice1712* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
	struct snd_ice1712 *ice = FUNC1(kcontrol);
	static const char * const aureon_texts[] = {
		"CD",		/* RXP0 */
		"Optical"	/* RXP1 */
	};
	static const char * const prodigy_texts[] = {
		"CD",
		"Coax"
	};
	if (ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71)
		return FUNC0(uinfo, 1, 2, prodigy_texts);
	else
		return FUNC0(uinfo, 1, 2, aureon_texts);
}