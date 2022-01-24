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
struct alc_spec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int /*<<< orphan*/  AMP_OUT_MUTE ; 
 int /*<<< orphan*/  PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_spec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;
	hda_nid_t hp_pin = FUNC1(spec);
	bool hp_pin_sense;

	FUNC0(codec);

	if (!hp_pin)
		return;

	FUNC4(30);
	hp_pin_sense = FUNC6(codec, hp_pin);

	/* Index 0x43 Direct Drive HP AMP LPM Control 1 */
	/* Headphone capless set to high power mode */
	FUNC3(codec, 0x43, 0x9004);

	FUNC5(codec, hp_pin, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

	if (hp_pin_sense)
		FUNC4(85);

	FUNC5(codec, hp_pin, 0,
			    AC_VERB_SET_PIN_WIDGET_CONTROL, PIN_OUT);

	if (hp_pin_sense)
		FUNC4(85);
	/* Index 0x46 Combo jack auto switch control 2 */
	/* 3k pull low control for Headset jack. */
	FUNC2(codec, 0x46, 3 << 12, 0);
	/* Headphone capless set to normal mode */
	FUNC3(codec, 0x43, 0x9614);
}