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
struct nid_path {int dummy; } ;
struct hda_input_mux {int num_items; } ;
struct hda_gen_spec {scalar_t__* adc_nids; scalar_t__ hp_mic_pin; int hp_mic_mux_idx; int* dyn_adc_idx; scalar_t__ dyn_adc_switch; scalar_t__* imux_pins; int /*<<< orphan*/ ** input_paths; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,char*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,struct hda_input_mux*,char const*,int,int /*<<< orphan*/ *) ; 
 struct nid_path* FUNC3 (struct hda_codec*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,struct nid_path*) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec, hda_nid_t pin,
				int cfg_idx, int num_adcs,
				const char *label, int anchor)
{
	struct hda_gen_spec *spec = codec->spec;
	struct hda_input_mux *imux = &spec->input_mux;
	int imux_idx = imux->num_items;
	bool imux_added = false;
	int c;

	for (c = 0; c < num_adcs; c++) {
		struct nid_path *path;
		hda_nid_t adc = spec->adc_nids[c];

		if (!FUNC0(codec, pin, adc))
			continue;
		path = FUNC3(codec, pin, adc, anchor);
		if (!path)
			continue;
		FUNC1(codec, "input", path);
		spec->input_paths[imux_idx][c] =
			FUNC4(codec, path);

		if (!imux_added) {
			if (spec->hp_mic_pin == pin)
				spec->hp_mic_mux_idx = imux->num_items;
			spec->imux_pins[imux->num_items] = pin;
			FUNC2(codec, imux, label, cfg_idx, NULL);
			imux_added = true;
			if (spec->dyn_adc_switch)
				spec->dyn_adc_idx[imux_idx] = c;
		}
	}

	return 0;
}