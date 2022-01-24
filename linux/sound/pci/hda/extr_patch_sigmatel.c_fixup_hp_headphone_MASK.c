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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_DEFCFG_DEF_ASSOC ; 
 unsigned int AC_DEFCFG_DEVICE ; 
 unsigned int AC_DEFCFG_DEVICE_SHIFT ; 
 unsigned int AC_DEFCFG_SEQUENCE ; 
 unsigned int AC_JACK_HP_OUT ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec, hda_nid_t pin)
{
	unsigned int pin_cfg = FUNC0(codec, pin);

	/* It was changed in the BIOS to just satisfy MS DTM.
	 * Lets turn it back into slaved HP
	 */
	pin_cfg = (pin_cfg & (~AC_DEFCFG_DEVICE)) |
		(AC_JACK_HP_OUT << AC_DEFCFG_DEVICE_SHIFT);
	pin_cfg = (pin_cfg & (~(AC_DEFCFG_DEF_ASSOC | AC_DEFCFG_SEQUENCE))) |
		0x1f;
	FUNC1(codec, pin, pin_cfg);
}