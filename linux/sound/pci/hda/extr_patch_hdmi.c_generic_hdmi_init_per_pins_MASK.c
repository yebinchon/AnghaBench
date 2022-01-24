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
struct hdmi_spec_per_pin {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct hda_codec* codec; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_spec_per_pin*,int) ; 
 struct hdmi_spec_per_pin* FUNC2 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  hdmi_repoll_eld ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	int pin_idx;

	for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
		struct hdmi_spec_per_pin *per_pin = FUNC2(spec, pin_idx);

		per_pin->codec = codec;
		FUNC3(&per_pin->lock);
		FUNC0(&per_pin->work, hdmi_repoll_eld);
		FUNC1(per_pin, pin_idx);
	}
	return 0;
}