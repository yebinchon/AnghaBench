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
struct nid_path {int active; } ;
struct hda_gen_spec {int /*<<< orphan*/  mixer_nid; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hda_codec*,scalar_t__ const) ; 
 struct nid_path* FUNC1 (struct hda_codec*,scalar_t__,scalar_t__ const,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,struct nid_path*) ; 

__attribute__((used)) static bool FUNC3(struct hda_codec *codec, int outs,
			const hda_nid_t *pins, hda_nid_t *dacs, int *path_idx)
{
	struct hda_gen_spec *spec = codec->spec;
	int i;
	bool found = false;
	for (i = 0; i < outs; i++) {
		struct nid_path *path;
		hda_nid_t dac;
		if (dacs[i])
			continue;
		dac = FUNC0(codec, pins[i]);
		if (!dac)
			continue;
		path = FUNC1(codec, dac, pins[i],
					    -spec->mixer_nid);
		if (!path && !i && spec->mixer_nid)
			path = FUNC1(codec, dac, pins[i], 0);
		if (path) {
			dacs[i] = dac;
			found = true;
			/* print_nid_path(codec, "output", path); */
			path->active = true;
			path_idx[i] = FUNC2(codec, path);
		}
	}
	return found;
}