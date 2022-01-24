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
 scalar_t__ VT1724_SUBDEVICE_AUREON71_UNIVERSE ; 
 int FUNC0 (struct snd_ctl_elem_info*,int,int,char const* const*) ; 
 struct snd_ice1712* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
	static const char * const texts[] = {
		"CD",		/* AIN1 */
		"Aux",		/* AIN2 */
		"Line",		/* AIN3 */
		"Mic",		/* AIN4 */
		"AC97"		/* AIN5 */
	};
	static const char * const universe_texts[] = {
		"Aux1",		/* AIN1 */
		"CD",		/* AIN2 */
		"Phono",	/* AIN3 */
		"Line",		/* AIN4 */
		"Aux2",		/* AIN5 */
		"Mic",		/* AIN6 */
		"Aux3",		/* AIN7 */
		"AC97"		/* AIN8 */
	};
	struct snd_ice1712 *ice = FUNC1(kcontrol);

	if (ice->eeprom.subvendor == VT1724_SUBDEVICE_AUREON71_UNIVERSE)
		return FUNC0(uinfo, 2, 8, universe_texts);
	else
		return FUNC0(uinfo, 2, 5, texts);
}