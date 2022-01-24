#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hda_codec {struct conexant_spec* spec; } ;
struct auto_pin_cfg {int num_inputs; int /*<<< orphan*/ * hp_pins; TYPE_1__* inputs; } ;
struct TYPE_4__ {scalar_t__* imux_pins; size_t* cur_mux; int hp_jack_present; struct auto_pin_cfg autocfg; } ;
struct conexant_spec {TYPE_2__ gen; } ;
typedef  scalar_t__ hda_nid_t ;
struct TYPE_3__ {scalar_t__ pin; int /*<<< orphan*/  is_headphone_mic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	/* The verbs used in this function were tested on a Conexant CX20751/2 codec. */
	int i;
	bool mic_mode = false;
	struct conexant_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->gen.autocfg;

	hda_nid_t mux_pin = spec->gen.imux_pins[spec->gen.cur_mux[0]];

	for (i = 0; i < cfg->num_inputs; i++)
		if (cfg->inputs[i].pin == mux_pin) {
			mic_mode = !!cfg->inputs[i].is_headphone_mic;
			break;
		}

	if (mic_mode) {
		FUNC0(codec, 0x1c, 0, 0x410, 0x7c); /* enable merged mode for analog int-mic */
		spec->gen.hp_jack_present = false;
	} else {
		FUNC0(codec, 0x1c, 0, 0x410, 0x54); /* disable merged mode for analog int-mic */
		spec->gen.hp_jack_present = FUNC2(codec, spec->gen.autocfg.hp_pins[0]);
	}

	FUNC1(codec);
}