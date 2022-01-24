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
struct nid_path {scalar_t__* path; int* idx; } ;
struct hda_gen_spec {scalar_t__ const mixer_merge_nid; } ;
struct hda_codec {scalar_t__ single_adc_amp; struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int AC_WID_AUD_IN ; 
 int AC_WID_PIN ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hda_codec*,scalar_t__,scalar_t__ const**) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec, struct nid_path *path,
			    int i, bool enable, bool add_aamix)
{
	struct hda_gen_spec *spec = codec->spec;
	const hda_nid_t *conn;
	int n, nums, idx;
	int type;
	hda_nid_t nid = path->path[i];

	nums = FUNC5(codec, nid, &conn);
	if (nums < 0)
		return;
	type = FUNC3(FUNC2(codec, nid));
	if (type == AC_WID_PIN ||
	    (type == AC_WID_AUD_IN && codec->single_adc_amp)) {
		nums = 1;
		idx = 0;
	} else
		idx = path->idx[i];

	for (n = 0; n < nums; n++)
		FUNC4(codec, nid, HDA_INPUT, n);

	/* here is a little bit tricky in comparison with activate_amp_out();
	 * when aa-mixer is available, we need to enable the path as well
	 */
	for (n = 0; n < nums; n++) {
		if (n != idx) {
			if (conn[n] != spec->mixer_merge_nid)
				continue;
			/* when aamix is disabled, force to off */
			if (!add_aamix) {
				FUNC0(codec, nid, HDA_INPUT, n, n, false);
				continue;
			}
		}
		FUNC1(codec, nid, HDA_INPUT, n, idx, enable);
	}
}