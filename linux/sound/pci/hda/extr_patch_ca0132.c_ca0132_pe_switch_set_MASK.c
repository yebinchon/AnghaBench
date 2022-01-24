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
struct ca0132_spec {int /*<<< orphan*/ * effects_switch; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 size_t EFFECT_START_NID ; 
 scalar_t__ OUT_EFFECT_END_NID ; 
 size_t OUT_EFFECT_START_NID ; 
 size_t PLAY_ENHANCEMENT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	hda_nid_t nid;
	int i, ret = 0;

	FUNC3(codec, "ca0132_pe_switch_set: val=%ld\n",
		    spec->effects_switch[PLAY_ENHANCEMENT - EFFECT_START_NID]);

	if (FUNC2(spec))
		FUNC0(codec);

	i = OUT_EFFECT_START_NID - EFFECT_START_NID;
	nid = OUT_EFFECT_START_NID;
	/* PE affects all out effects */
	for (; nid < OUT_EFFECT_END_NID; nid++, i++)
		ret |= FUNC1(codec, nid, spec->effects_switch[i]);

	return ret;
}