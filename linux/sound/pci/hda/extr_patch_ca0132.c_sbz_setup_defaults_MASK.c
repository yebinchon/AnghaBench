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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dsp_state; } ;
struct TYPE_2__ {int params; int mid; int* reqs; unsigned int* def_vals; } ;

/* Variables and functions */
 scalar_t__ DSP_DOWNLOADED ; 
 unsigned int FLOAT_ONE ; 
 unsigned int FLOAT_TWO ; 
 unsigned int FLOAT_ZERO ; 
 int IN_EFFECTS_COUNT ; 
 int /*<<< orphan*/  MEM_CONNID_WUH ; 
 int OUT_EFFECTS_COUNT ; 
 int /*<<< orphan*/  SR_48_000 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 TYPE_1__* ca0132_effects ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC9(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int tmp;
	int num_fx;
	int idx, i;

	if (spec->dsp_state != DSP_DOWNLOADED)
		return;

	FUNC2(codec);
	FUNC3(codec);
	FUNC8(codec);
	FUNC7(codec);

	FUNC5(codec, 0x03, 1);
	FUNC5(codec, 0x04, 1);

	/*
	 * Sets internal input loopback to off, used to have a switch to
	 * enable input loopback, but turned out to be way too buggy.
	 */
	tmp = FLOAT_ONE;
	FUNC6(codec, 0x37, 0x08, tmp);
	FUNC6(codec, 0x37, 0x10, tmp);

	/*remove DSP headroom*/
	tmp = FLOAT_ZERO;
	FUNC6(codec, 0x96, 0x3C, tmp);

	/* set WUH source */
	tmp = FLOAT_TWO;
	FUNC6(codec, 0x31, 0x00, tmp);
	FUNC4(codec, MEM_CONNID_WUH, SR_48_000);

	/* Set speaker source? */
	FUNC6(codec, 0x32, 0x00, tmp);

	FUNC1(codec);

	/* out, in effects + voicefx */
	num_fx = OUT_EFFECTS_COUNT + IN_EFFECTS_COUNT + 1;
	for (idx = 0; idx < num_fx; idx++) {
		for (i = 0; i <= ca0132_effects[idx].params; i++) {
			FUNC6(codec,
					ca0132_effects[idx].mid,
					ca0132_effects[idx].reqs[i],
					ca0132_effects[idx].def_vals[i]);
		}
	}

	FUNC0(codec);
}