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
struct nid_path {int depth; int* idx; void** ctls; int /*<<< orphan*/ * path; } ;
struct hda_codec {scalar_t__ single_adc_amp; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 size_t NID_PATH_MUTE_CTL ; 
 size_t NID_PATH_VOL_CTL ; 
 scalar_t__ FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, struct nid_path *path)
{
	hda_nid_t nid;
	int i, depth;

	path->ctls[NID_PATH_VOL_CTL] = path->ctls[NID_PATH_MUTE_CTL] = 0;
	for (depth = 0; depth < 3; depth++) {
		if (depth >= path->depth)
			return -EINVAL;
		i = path->depth - depth - 1;
		nid = path->path[i];
		if (!path->ctls[NID_PATH_VOL_CTL]) {
			if (FUNC2(codec, nid, HDA_OUTPUT))
				path->ctls[NID_PATH_VOL_CTL] =
					FUNC0(nid, 3, 0, HDA_OUTPUT);
			else if (FUNC2(codec, nid, HDA_INPUT)) {
				int idx = path->idx[i];
				if (!depth && codec->single_adc_amp)
					idx = 0;
				path->ctls[NID_PATH_VOL_CTL] =
					FUNC0(nid, 3, idx, HDA_INPUT);
			}
		}
		if (!path->ctls[NID_PATH_MUTE_CTL]) {
			if (FUNC1(codec, nid, HDA_OUTPUT))
				path->ctls[NID_PATH_MUTE_CTL] =
					FUNC0(nid, 3, 0, HDA_OUTPUT);
			else if (FUNC1(codec, nid, HDA_INPUT)) {
				int idx = path->idx[i];
				if (!depth && codec->single_adc_amp)
					idx = 0;
				path->ctls[NID_PATH_MUTE_CTL] =
					FUNC0(nid, 3, idx, HDA_INPUT);
			}
		}
	}
	return 0;
}