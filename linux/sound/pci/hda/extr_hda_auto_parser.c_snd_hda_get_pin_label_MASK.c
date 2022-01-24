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
struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int dig_outs; int num_inputs; TYPE_1__* inputs; int /*<<< orphan*/ * dig_out_pins; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
#define  AC_JACK_DIG_OTHER_OUT 132 
#define  AC_JACK_HP_OUT 131 
#define  AC_JACK_LINE_OUT 130 
 scalar_t__ AC_JACK_PORT_NONE ; 
#define  AC_JACK_SPDIF_OUT 129 
#define  AC_JACK_SPEAKER 128 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,struct auto_pin_cfg const*,char*,char*,int,int*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 char* FUNC3 (struct hda_codec*,struct auto_pin_cfg const*,int) ; 
 char* FUNC4 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

int FUNC8(struct hda_codec *codec, hda_nid_t nid,
			  const struct auto_pin_cfg *cfg,
			  char *label, int maxlen, int *indexp)
{
	unsigned int def_conf = FUNC6(codec, nid);
	const char *name = NULL;
	int i;
	bool hdmi;

	if (indexp)
		*indexp = 0;
	if (FUNC1(def_conf) == AC_JACK_PORT_NONE)
		return 0;

	switch (FUNC2(def_conf)) {
	case AC_JACK_LINE_OUT:
		return FUNC0(codec, nid, cfg, "Line Out",
					   label, maxlen, indexp);
	case AC_JACK_SPEAKER:
		return FUNC0(codec, nid, cfg, "Speaker",
					   label, maxlen, indexp);
	case AC_JACK_HP_OUT:
		return FUNC0(codec, nid, cfg, "Headphone",
					   label, maxlen, indexp);
	case AC_JACK_SPDIF_OUT:
	case AC_JACK_DIG_OTHER_OUT:
		hdmi = FUNC5(def_conf);
		name = hdmi ? "HDMI" : "SPDIF";
		if (cfg && indexp)
			for (i = 0; i < cfg->dig_outs; i++) {
				hda_nid_t pin = cfg->dig_out_pins[i];
				unsigned int c;
				if (pin == nid)
					break;
				c = FUNC6(codec, pin);
				if (hdmi == FUNC5(c))
					(*indexp)++;
			}
		break;
	default:
		if (cfg) {
			for (i = 0; i < cfg->num_inputs; i++) {
				if (cfg->inputs[i].pin != nid)
					continue;
				name = FUNC3(codec, cfg, i);
				if (name)
					break;
			}
		}
		if (!name)
			name = FUNC4(codec, NULL, nid, true);
		break;
	}
	if (!name)
		return 0;
	FUNC7(label, name, maxlen);
	return 1;
}