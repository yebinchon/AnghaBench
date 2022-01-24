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
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {scalar_t__* imux_pins; size_t* cur_mux; int hp_jack_present; } ;
struct alc_spec {scalar_t__ headset_mic_pin; scalar_t__ headphone_mic_pin; int current_headset_mode; TYPE_1__ gen; int /*<<< orphan*/  current_headset_type; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int AC_PINCTL_HP_EN ; 
 int AC_PINCTL_OUT_EN ; 
#define  ALC_HEADSET_MODE_HEADPHONE 131 
#define  ALC_HEADSET_MODE_HEADSET 130 
#define  ALC_HEADSET_MODE_MIC 129 
 int ALC_HEADSET_MODE_UNKNOWN ; 
#define  ALC_HEADSET_MODE_UNPLUGGED 128 
 int /*<<< orphan*/  ALC_HEADSET_TYPE_CTIA ; 
 int /*<<< orphan*/  ALC_HEADSET_TYPE_OMTP ; 
 int /*<<< orphan*/  ALC_HEADSET_TYPE_UNKNOWN ; 
 int PIN_VREFHIZ ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 scalar_t__ FUNC1 (struct alc_spec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC10(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;

	hda_nid_t mux_pin = spec->gen.imux_pins[spec->gen.cur_mux[0]];
	hda_nid_t hp_pin = FUNC1(spec);

	int new_headset_mode;

	if (!FUNC8(codec, hp_pin))
		new_headset_mode = ALC_HEADSET_MODE_UNPLUGGED;
	else if (mux_pin == spec->headset_mic_pin)
		new_headset_mode = ALC_HEADSET_MODE_HEADSET;
	else if (mux_pin == spec->headphone_mic_pin)
		new_headset_mode = ALC_HEADSET_MODE_MIC;
	else
		new_headset_mode = ALC_HEADSET_MODE_HEADPHONE;

	if (new_headset_mode == spec->current_headset_mode) {
		FUNC7(codec);
		return;
	}

	switch (new_headset_mode) {
	case ALC_HEADSET_MODE_UNPLUGGED:
		FUNC6(codec);
		spec->current_headset_mode = ALC_HEADSET_MODE_UNKNOWN;
		spec->current_headset_type = ALC_HEADSET_TYPE_UNKNOWN;
		spec->gen.hp_jack_present = false;
		break;
	case ALC_HEADSET_MODE_HEADSET:
		if (spec->current_headset_type == ALC_HEADSET_TYPE_UNKNOWN)
			FUNC0(codec);
		if (spec->current_headset_type == ALC_HEADSET_TYPE_CTIA)
			FUNC2(codec);
		else if (spec->current_headset_type == ALC_HEADSET_TYPE_OMTP)
			FUNC5(codec);
		spec->gen.hp_jack_present = true;
		break;
	case ALC_HEADSET_MODE_MIC:
		FUNC4(codec, hp_pin, spec->headphone_mic_pin);
		spec->gen.hp_jack_present = false;
		break;
	case ALC_HEADSET_MODE_HEADPHONE:
		FUNC3(codec);
		spec->gen.hp_jack_present = true;
		break;
	}
	if (new_headset_mode != ALC_HEADSET_MODE_MIC) {
		FUNC9(codec, hp_pin,
					  AC_PINCTL_OUT_EN | AC_PINCTL_HP_EN);
		if (spec->headphone_mic_pin && spec->headphone_mic_pin != hp_pin)
			FUNC9(codec, spec->headphone_mic_pin,
						  PIN_VREFHIZ);
	}
	spec->current_headset_mode = new_headset_mode;

	FUNC7(codec);
}