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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int* vnode_lswitch; scalar_t__ cur_mic_type; int /*<<< orphan*/  cur_mic_boost; int /*<<< orphan*/ * effects_switch; int /*<<< orphan*/  unsol_tag_amic1; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_MIC ; 
 size_t EFFECT_START_NID ; 
 scalar_t__ LINE_MIC_IN ; 
 int /*<<< orphan*/  MEM_CONNID_DMIC ; 
 int /*<<< orphan*/  SR_32_000 ; 
 int /*<<< orphan*/  SR_96_000 ; 
 size_t VNID_AMIC1_ASEL ; 
 size_t VNID_AMIC1_SEL ; 
 size_t VNODE_START_NID ; 
 size_t VOICE_FOCUS ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,char*) ; 
 int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	int jack_present;
	int auto_jack;

	FUNC4(codec, "ca0132_select_mic\n");

	FUNC7(codec);

	auto_jack = spec->vnode_lswitch[VNID_AMIC1_ASEL - VNODE_START_NID];

	if (auto_jack)
		jack_present = FUNC5(codec, spec->unsol_tag_amic1);
	else
		jack_present =
			spec->vnode_lswitch[VNID_AMIC1_SEL - VNODE_START_NID];

	if (jack_present)
		spec->cur_mic_type = LINE_MIC_IN;
	else
		spec->cur_mic_type = DIGITAL_MIC;

	if (spec->cur_mic_type == DIGITAL_MIC) {
		/* enable digital Mic */
		FUNC3(codec, MEM_CONNID_DMIC, SR_32_000);
		FUNC2(codec, 1);
		FUNC1(codec, 0);
		/* set voice focus */
		FUNC0(codec, VOICE_FOCUS,
				   spec->effects_switch
				   [VOICE_FOCUS - EFFECT_START_NID]);
	} else {
		/* disable digital Mic */
		FUNC3(codec, MEM_CONNID_DMIC, SR_96_000);
		FUNC2(codec, 0);
		FUNC1(codec, spec->cur_mic_boost);
		/* disable voice focus */
		FUNC0(codec, VOICE_FOCUS, 0);
	}

	FUNC6(codec);

	return 0;
}