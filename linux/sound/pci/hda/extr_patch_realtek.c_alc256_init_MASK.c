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
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ ultra_low_power; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int /*<<< orphan*/  AMP_OUT_MUTE ; 
 int /*<<< orphan*/  PIN_OUT ; 
 int FUNC0 (struct alc_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;
	hda_nid_t hp_pin = FUNC0(spec);
	bool hp_pin_sense;

	if (!hp_pin)
		hp_pin = 0x21;

	FUNC3(30);

	hp_pin_sense = FUNC5(codec, hp_pin);

	if (hp_pin_sense)
		FUNC3(2);

	FUNC2(codec, 0x57, 0x04, 0x0007, 0x1); /* Low power */
	if (spec->ultra_low_power) {
		FUNC1(codec, 0x03, 1<<1, 1<<1);
		FUNC1(codec, 0x08, 3<<2, 3<<2);
		FUNC1(codec, 0x08, 7<<4, 0);
		FUNC1(codec, 0x3b, 1<<15, 0);
		FUNC1(codec, 0x0e, 7<<6, 7<<6);
		FUNC3(30);
	}

	FUNC4(codec, hp_pin, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

	if (hp_pin_sense || spec->ultra_low_power)
		FUNC3(85);

	FUNC4(codec, hp_pin, 0,
			    AC_VERB_SET_PIN_WIDGET_CONTROL, PIN_OUT);

	if (hp_pin_sense || spec->ultra_low_power)
		FUNC3(100);

	FUNC1(codec, 0x46, 3 << 12, 0);
	FUNC2(codec, 0x57, 0x04, 0x0007, 0x4); /* Hight power */
	FUNC2(codec, 0x53, 0x02, 0x8000, 1 << 15); /* Clear bit */
	FUNC2(codec, 0x53, 0x02, 0x8000, 0 << 15);
	FUNC1(codec, 0x36, 1 << 13, 1 << 5); /* Switch pcbeep path to Line in path*/
}