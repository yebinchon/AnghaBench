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
struct hdmi_spec_per_pin {struct hda_codec* codec; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hdmi_spec_per_pin*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,struct hdmi_spec_per_pin*) ; 

__attribute__((used)) static bool FUNC7(struct hdmi_spec_per_pin *per_pin, int repoll)
{
	struct hda_codec *codec = per_pin->codec;
	int ret;

	/* no temporary power up/down needed for component notifier */
	if (!FUNC0(codec)) {
		ret = FUNC5(codec);
		if (ret < 0 && FUNC3(FUNC1(codec))) {
			FUNC4(codec);
			return false;
		}
		ret = FUNC2(per_pin, repoll);
		FUNC4(codec);
	} else {
		FUNC6(codec, per_pin);
		ret = false; /* don't call snd_hda_jack_report_sync() */
	}

	return ret;
}