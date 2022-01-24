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
struct alc_spec {scalar_t__ ultra_low_power; int /*<<< orphan*/  no_shutup_pins; } ;
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
	bool hp_pin_sense;

	if (!hp_pin)
		hp_pin = 0x21;

	hp_pin_sense = FUNC6(codec, hp_pin);

	if (hp_pin_sense)
		FUNC4(2);

	FUNC5(codec, hp_pin, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

	if (hp_pin_sense || spec->ultra_low_power)
		FUNC4(85);

	/* 3k pull low control for Headset jack. */
	/* NOTE: call this before clearing the pin, otherwise codec stalls */
	FUNC3(codec, 0x46, 0, 3 << 12);

	if (!spec->no_shutup_pins)
		FUNC5(codec, hp_pin, 0,
				    AC_VERB_SET_PIN_WIDGET_CONTROL, 0x0);

	if (hp_pin_sense || spec->ultra_low_power)
		FUNC4(100);

	FUNC0(codec, false);
	FUNC2(codec);
	if (spec->ultra_low_power) {
		FUNC4(50);
		FUNC3(codec, 0x03, 1<<1, 0);
		FUNC3(codec, 0x08, 7<<4, 7<<4);
		FUNC3(codec, 0x08, 3<<2, 0);
		FUNC3(codec, 0x3b, 1<<15, 1<<15);
		FUNC3(codec, 0x0e, 7<<6, 0);
		FUNC4(30);
	}
}