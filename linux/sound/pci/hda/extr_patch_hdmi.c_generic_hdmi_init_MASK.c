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
struct hdmi_spec_per_pin {int dev_id; int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec {int use_jack_detect; int num_pins; int /*<<< orphan*/  bind_lock; } ;
struct hda_codec {int /*<<< orphan*/  jackpoll_interval; struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hda_codec*) ; 
 struct hdmi_spec_per_pin* FUNC1 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jack_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	int pin_idx;

	FUNC3(&spec->bind_lock);
	spec->use_jack_detect = !codec->jackpoll_interval;
	for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
		struct hdmi_spec_per_pin *per_pin = FUNC1(spec, pin_idx);
		hda_nid_t pin_nid = per_pin->pin_nid;
		int dev_id = per_pin->dev_id;

		FUNC7(codec, pin_nid, dev_id);
		FUNC2(codec, pin_nid);
		if (FUNC0(codec))
			continue;
		if (spec->use_jack_detect)
			FUNC5(codec, pin_nid);
		else
			FUNC6(codec, pin_nid,
							    jack_callback);
	}
	FUNC4(&spec->bind_lock);
	return 0;
}