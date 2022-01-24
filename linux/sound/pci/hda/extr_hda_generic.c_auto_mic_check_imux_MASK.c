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
struct hda_input_mux {int /*<<< orphan*/  num_items; } ;
struct hda_gen_spec {int am_num_entries; TYPE_1__* am_entry; int /*<<< orphan*/  imux_pins; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct TYPE_2__ {scalar_t__ idx; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  call_mic_autoswitch ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;
	const struct hda_input_mux *imux;
	int i;

	imux = &spec->input_mux;
	for (i = 0; i < spec->am_num_entries; i++) {
		spec->am_entry[i].idx =
			FUNC0(spec->am_entry[i].pin,
					     spec->imux_pins, imux->num_items);
		if (spec->am_entry[i].idx < 0)
			return false; /* no corresponding imux */
	}

	/* we don't need the jack detection for the first pin */
	for (i = 1; i < spec->am_num_entries; i++)
		FUNC1(codec,
						    spec->am_entry[i].pin,
						    call_mic_autoswitch);
	return true;
}