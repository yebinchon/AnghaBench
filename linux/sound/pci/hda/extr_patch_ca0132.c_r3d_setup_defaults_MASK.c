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
 unsigned int FLOAT_TWO ; 
 unsigned int FLOAT_ZERO ; 
 int IN_EFFECTS_COUNT ; 
 int /*<<< orphan*/  MEM_CONNID_WUH ; 
 int OUT_EFFECTS_COUNT ; 
 scalar_t__ QUIRK_R3DI ; 
 int /*<<< orphan*/  R3DI_DSP_DOWNLOADED ; 
 int /*<<< orphan*/  SR_48_000 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 TYPE_1__* ca0132_effects ; 
 scalar_t__ FUNC2 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int tmp;
	int num_fx;
	int idx, i;

	if (spec->dsp_state != DSP_DOWNLOADED)
		return;

	FUNC0(codec);
	FUNC1(codec);

	/*remove DSP headroom*/
	tmp = FLOAT_ZERO;
	FUNC4(codec, 0x96, 0x3C, tmp);

	/* set WUH source */
	tmp = FLOAT_TWO;
	FUNC4(codec, 0x31, 0x00, tmp);
	FUNC3(codec, MEM_CONNID_WUH, SR_48_000);

	/* Set speaker source? */
	FUNC4(codec, 0x32, 0x00, tmp);

	if (FUNC2(spec) == QUIRK_R3DI)
		FUNC5(codec, R3DI_DSP_DOWNLOADED);

	/* Setup effect defaults */
	num_fx = OUT_EFFECTS_COUNT + IN_EFFECTS_COUNT + 1;
	for (idx = 0; idx < num_fx; idx++) {
		for (i = 0; i <= ca0132_effects[idx].params; i++) {
			FUNC4(codec,
					ca0132_effects[idx].mid,
					ca0132_effects[idx].reqs[i],
					ca0132_effects[idx].def_vals[i]);
		}
	}
}