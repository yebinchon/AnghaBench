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
struct nid_path {int* idx; int depth; unsigned int* ctls; int active; int stream_enabled; int pin_fixed; } ;
struct hda_gen_spec {scalar_t__ mixer_nid; scalar_t__ mixer_merge_nid; void* loopback_merge_path; void** loopback_paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HDA_CTL_WIDGET_MUTE ; 
 int /*<<< orphan*/  HDA_CTL_WIDGET_VOL ; 
 size_t NID_PATH_MUTE_CTL ; 
 size_t NID_PATH_VOL_CTL ; 
 int FUNC0 (struct hda_gen_spec*,int /*<<< orphan*/ ,char const*,int,unsigned int) ; 
 int FUNC1 (struct hda_gen_spec*,int /*<<< orphan*/ ,char const*,int,unsigned int) ; 
 int FUNC2 (struct hda_gen_spec*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__,scalar_t__,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,char*,struct nid_path*) ; 
 struct nid_path* FUNC5 (struct hda_codec*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct hda_codec*,struct nid_path*) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec, int input_idx,
			    hda_nid_t pin, const char *ctlname, int ctlidx,
			    hda_nid_t mix_nid)
{
	struct hda_gen_spec *spec = codec->spec;
	struct nid_path *path;
	unsigned int mix_val, mute_val;
	int err, idx;

	if (!FUNC3(codec, mix_nid, pin, &mix_val, &mute_val))
		return 0;

	path = FUNC5(codec, pin, mix_nid, 0);
	if (!path)
		return -EINVAL;
	FUNC4(codec, "loopback", path);
	spec->loopback_paths[input_idx] = FUNC6(codec, path);

	idx = path->idx[path->depth - 1];
	if (mix_val) {
		err = FUNC1(spec, HDA_CTL_WIDGET_VOL, ctlname, ctlidx, mix_val);
		if (err < 0)
			return err;
		path->ctls[NID_PATH_VOL_CTL] = mix_val;
	}

	if (mute_val) {
		err = FUNC0(spec, HDA_CTL_WIDGET_MUTE, ctlname, ctlidx, mute_val);
		if (err < 0)
			return err;
		path->ctls[NID_PATH_MUTE_CTL] = mute_val;
	}

	path->active = true;
	path->stream_enabled = true; /* no DAC/ADC involved */
	err = FUNC2(spec, mix_nid, idx);
	if (err < 0)
		return err;

	if (spec->mixer_nid != spec->mixer_merge_nid &&
	    !spec->loopback_merge_path) {
		path = FUNC5(codec, spec->mixer_nid,
					    spec->mixer_merge_nid, 0);
		if (path) {
			FUNC4(codec, "loopback-merge", path);
			path->active = true;
			path->pin_fixed = true; /* static route */
			path->stream_enabled = true; /* no DAC/ADC involved */
			spec->loopback_merge_path =
				FUNC6(codec, path);
		}
	}

	return 0;
}