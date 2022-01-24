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
 int AMP_OUT_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int FUNC1 (struct alc_spec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC7(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;
	hda_nid_t hp_pin = FUNC1(spec);
	bool hp1_pin_sense, hp2_pin_sense;

	if (!hp_pin)
		hp_pin = 0x21;
	/* 3k pull low control for Headset jack. */
	FUNC3(codec, 0x4a, 0, 3 << 10);

	hp1_pin_sense = FUNC6(codec, hp_pin);
	hp2_pin_sense = FUNC6(codec, 0x16);

	if (hp1_pin_sense || hp2_pin_sense)
		FUNC4(2);

	if (hp1_pin_sense || spec->ultra_low_power)
		FUNC5(codec, hp_pin, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);
	if (hp2_pin_sense)
		FUNC5(codec, 0x16, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

	if (hp1_pin_sense || hp2_pin_sense || spec->ultra_low_power)
		FUNC4(85);

	if (hp1_pin_sense || spec->ultra_low_power)
		FUNC5(codec, hp_pin, 0,
			    AC_VERB_SET_PIN_WIDGET_CONTROL, 0x0);
	if (hp2_pin_sense)
		FUNC5(codec, 0x16, 0,
			    AC_VERB_SET_PIN_WIDGET_CONTROL, 0x0);

	if (hp1_pin_sense || hp2_pin_sense || spec->ultra_low_power)
		FUNC4(100);

	FUNC0(codec, false);
	FUNC2(codec);
	if (spec->ultra_low_power) {
		FUNC4(50);
		FUNC3(codec, 0x08, 0x0f << 2, 0x0c << 2);
		FUNC3(codec, 0x0e, 7<<6, 0);
		FUNC3(codec, 0x33, 1<<11, 1<<11);
		FUNC3(codec, 0x4a, 3<<4, 2<<4);
		FUNC4(30);
	}
}