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
 int /*<<< orphan*/  FUNC0 (struct alc_spec*) ; 
 int FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;
	hda_nid_t hp_pin = FUNC0(spec);
	int i, val;

	if (!hp_pin)
		return;

	FUNC5(codec, hp_pin, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

	FUNC4(100);

	if (!spec->no_shutup_pins)
		FUNC5(codec, hp_pin, 0,
				    AC_VERB_SET_PIN_WIDGET_CONTROL, 0x0);

	FUNC2(codec, 0x6f, 0x000f, 0);/* Set HP depop to manual mode */
	FUNC3(codec, 0x58, 0x00, 0x8000, 0x8000); /* HP depop procedure start */

	/* Wait for depop procedure finish  */
	val = FUNC1(codec, 0x58, 0x01);
	for (i = 0; i < 20 && val & 0x0080; i++) {
		FUNC4(50);
		val = FUNC1(codec, 0x58, 0x01);
	}
	/* Set HP depop to auto mode */
	FUNC2(codec, 0x6f, 0x000f, 0x000b);
	FUNC4(50);
}