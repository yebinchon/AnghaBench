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
 scalar_t__ AC_JACK_HP_OUT ; 
 scalar_t__ AC_JACK_LINE_OUT ; 
 scalar_t__ AC_JACK_PORT_NONE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct hda_codec *codec, hda_nid_t pin)
{
	unsigned int pin_cfg = FUNC2(codec, pin);

	/* count line-out, too, as BIOS sets often so */
	return FUNC0(pin_cfg) != AC_JACK_PORT_NONE &&
		(FUNC1(pin_cfg) == AC_JACK_LINE_OUT ||
		 FUNC1(pin_cfg) == AC_JACK_HP_OUT);
}