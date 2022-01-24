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
struct ca0132_spec {scalar_t__ voicefx_val; int /*<<< orphan*/ * effects_switch; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 size_t CRYSTAL_VOICE ; 
 size_t EFFECT_START_NID ; 
 scalar_t__ IN_EFFECT_END_NID ; 
 size_t IN_EFFECT_START_NID ; 
 int FUNC0 (struct hda_codec*,int) ; 
 int FUNC1 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int) ; 
 scalar_t__ FUNC3 (struct ca0132_spec*) ; 
 int FUNC4 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,unsigned int) ; 
 unsigned int FUNC7 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	hda_nid_t nid;
	int i, ret = 0;
	unsigned int oldval;

	FUNC5(codec, "ca0132_cvoice_switch_set: val=%ld\n",
		    spec->effects_switch[CRYSTAL_VOICE - EFFECT_START_NID]);

	i = IN_EFFECT_START_NID - EFFECT_START_NID;
	nid = IN_EFFECT_START_NID;
	/* CrystalVoice affects all in effects */
	for (; nid < IN_EFFECT_END_NID; nid++, i++)
		ret |= FUNC1(codec, nid, spec->effects_switch[i]);

	/* including VoiceFX */
	ret |= FUNC4(codec, (spec->voicefx_val ? 1 : 0));

	/* set correct vipsource */
	oldval = FUNC7(codec);
	if (FUNC3(spec))
		ret |= FUNC0(codec, 1);
	else
		ret |= FUNC2(codec, 1);
	FUNC6(codec, oldval);
	return ret;
}