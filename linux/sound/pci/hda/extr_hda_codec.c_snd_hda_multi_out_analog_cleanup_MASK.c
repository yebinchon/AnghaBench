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
struct hda_multi_out {int num_dacs; scalar_t__ dig_out_used; scalar_t__ dig_out_nid; scalar_t__ const* extra_out_nid; scalar_t__ const* hp_out_nid; scalar_t__ const hp_nid; scalar_t__* dac_nids; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const*) ; 
 scalar_t__ HDA_DIG_ANALOG_DUP ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,scalar_t__ const) ; 

int FUNC5(struct hda_codec *codec,
				     struct hda_multi_out *mout)
{
	const hda_nid_t *nids = mout->dac_nids;
	int i;

	for (i = 0; i < mout->num_dacs; i++)
		FUNC4(codec, nids[i]);
	if (mout->hp_nid)
		FUNC4(codec, mout->hp_nid);
	for (i = 0; i < FUNC0(mout->hp_out_nid); i++)
		if (mout->hp_out_nid[i])
			FUNC4(codec,
						     mout->hp_out_nid[i]);
	for (i = 0; i < FUNC0(mout->extra_out_nid); i++)
		if (mout->extra_out_nid[i])
			FUNC4(codec,
						     mout->extra_out_nid[i]);
	FUNC2(&codec->spdif_mutex);
	if (mout->dig_out_nid && mout->dig_out_used == HDA_DIG_ANALOG_DUP) {
		FUNC1(codec, mout->dig_out_nid);
		mout->dig_out_used = 0;
	}
	FUNC3(&codec->spdif_mutex);
	return 0;
}