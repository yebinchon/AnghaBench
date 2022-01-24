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
struct auto_pin_cfg {int num_inputs; scalar_t__ line_out_type; scalar_t__ line_outs; scalar_t__ hp_outs; TYPE_1__* inputs; void** hp_pins; void** line_out_pins; } ;
struct hda_gen_spec {int hp_mic; int suppress_auto_mic; void* hp_mic_pin; scalar_t__ suppress_hp_mic_detect; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  void* hda_nid_t ;
struct TYPE_2__ {int is_headphone_mic; int /*<<< orphan*/  type; void* pin; } ;

/* Variables and functions */
 int AC_PINCAP_IN ; 
 int AUTO_CFG_MAX_INS ; 
 scalar_t__ AUTO_PIN_HP_OUT ; 
 int /*<<< orphan*/  AUTO_PIN_MIC ; 
 scalar_t__ INPUT_PIN_ATTR_INT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,void*) ; 
 unsigned int FUNC1 (struct hda_codec*,void*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int FUNC3 (struct hda_codec*,void*) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->autocfg;
	unsigned int defcfg;
	hda_nid_t nid;

	if (!spec->hp_mic) {
		if (spec->suppress_hp_mic_detect)
			return 0;
		/* automatic detection: only if no input or a single internal
		 * input pin is found, try to detect the shared hp/mic
		 */
		if (cfg->num_inputs > 1)
			return 0;
		else if (cfg->num_inputs == 1) {
			defcfg = FUNC1(codec, cfg->inputs[0].pin);
			if (FUNC2(defcfg) != INPUT_PIN_ATTR_INT)
				return 0;
		}
	}

	spec->hp_mic = 0; /* clear once */
	if (cfg->num_inputs >= AUTO_CFG_MAX_INS)
		return 0;

	nid = 0;
	if (cfg->line_out_type == AUTO_PIN_HP_OUT && cfg->line_outs > 0)
		nid = cfg->line_out_pins[0];
	else if (cfg->hp_outs > 0)
		nid = cfg->hp_pins[0];
	if (!nid)
		return 0;

	if (!(FUNC3(codec, nid) & AC_PINCAP_IN))
		return 0; /* no input */

	cfg->inputs[cfg->num_inputs].pin = nid;
	cfg->inputs[cfg->num_inputs].type = AUTO_PIN_MIC;
	cfg->inputs[cfg->num_inputs].is_headphone_mic = 1;
	cfg->num_inputs++;
	spec->hp_mic = 1;
	spec->hp_mic_pin = nid;
	/* we can't handle auto-mic together with HP-mic */
	spec->suppress_auto_mic = 1;
	FUNC0(codec, "Enable shared I/O jack on NID 0x%x\n", nid);
	return 0;
}