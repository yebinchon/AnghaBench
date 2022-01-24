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
struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {char const** input_labels; int* input_label_idxs; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 char* FUNC0 (struct hda_codec*,struct auto_pin_cfg const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;
	const struct auto_pin_cfg *cfg = &spec->autocfg;
	int i;

	for (i = 0; i < cfg->num_inputs; i++) {
		hda_nid_t pin = cfg->inputs[i].pin;
		const char *label;
		int j, idx;

		if (!FUNC1(codec, pin))
			continue;

		label = FUNC0(codec, cfg, i);
		idx = 0;
		for (j = i - 1; j >= 0; j--) {
			if (spec->input_labels[j] &&
			    !FUNC2(spec->input_labels[j], label)) {
				idx = spec->input_label_idxs[j] + 1;
				break;
			}
		}

		spec->input_labels[i] = label;
		spec->input_label_idxs[i] = idx;
	}

	return 0;
}