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
struct alc_spec {int /*<<< orphan*/  no_shutup_pins; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int AMP_OUT_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_spec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;
	hda_nid_t hp_pin = FUNC2(spec);
	bool hp_pin_sense;

	if (!hp_pin) {
		FUNC0(codec);
		return;
	}

	hp_pin_sense = FUNC6(codec, hp_pin);

	if (hp_pin_sense)
		FUNC4(2);

	FUNC5(codec, hp_pin, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

	if (hp_pin_sense)
		FUNC4(85);

	if (!spec->no_shutup_pins)
		FUNC5(codec, hp_pin, 0,
				    AC_VERB_SET_PIN_WIDGET_CONTROL, 0x0);

	if (hp_pin_sense)
		FUNC4(100);

	FUNC1(codec, false);
	FUNC3(codec);
}