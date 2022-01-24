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
struct hdmi_spec_per_pin {int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int AC_WCAP_OUT_AMP ; 
 int /*<<< orphan*/  AMP_OUT_UNMUTE ; 
 int /*<<< orphan*/  PIN_OUT ; 
 struct hdmi_spec_per_pin* FUNC0 (struct hdmi_spec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	struct hdmi_spec_per_pin *per_pin = FUNC0(spec, 0);
	hda_nid_t pin = per_pin->pin_nid;

	FUNC2(codec, pin, 0,
			    AC_VERB_SET_PIN_WIDGET_CONTROL, PIN_OUT);
	/* some codecs require to unmute the pin */
	if (FUNC1(codec, pin) & AC_WCAP_OUT_AMP)
		FUNC2(codec, pin, 0, AC_VERB_SET_AMP_GAIN_MUTE,
				    AMP_OUT_UNMUTE);
	FUNC3(codec, pin);
	return 0;
}