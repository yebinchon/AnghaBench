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
struct hda_gen_spec {int /*<<< orphan*/  mixer_nid; int /*<<< orphan*/ * private_dac_nids; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct badness_table {scalar_t__ no_dac; scalar_t__ no_primary_dac; scalar_t__ shared_surr_main; scalar_t__ shared_clfe; scalar_t__ shared_surr; scalar_t__ shared_primary; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hda_codec*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int) ; 
 scalar_t__ FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 struct nid_path* FUNC7 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nid_path* FUNC8 (struct hda_codec*,int) ; 
 int FUNC9 (struct hda_codec*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct hda_codec *codec, int num_outs,
			   const hda_nid_t *pins, hda_nid_t *dacs,
			   int *path_idx,
			   const struct badness_table *bad)
{
	struct hda_gen_spec *spec = codec->spec;
	int i, j;
	int badness = 0;
	hda_nid_t dac;

	if (!num_outs)
		return 0;

	for (i = 0; i < num_outs; i++) {
		struct nid_path *path;
		hda_nid_t pin = pins[i];

		path = FUNC8(codec, path_idx[i]);
		if (path) {
			badness += FUNC0(codec, path);
			continue;
		}

		dacs[i] = FUNC1(codec, pin);
		if (dacs[i]) {
			if (FUNC4(codec, dacs[i]))
				badness += bad->shared_primary;
		}

		if (!dacs[i])
			dacs[i] = FUNC6(codec, pin, false);
		if (!dacs[i] && !i) {
			/* try to steal the DAC of surrounds for the front */
			for (j = 1; j < num_outs; j++) {
				if (FUNC5(codec, dacs[j], pin)) {
					dacs[0] = dacs[j];
					dacs[j] = 0;
					FUNC3(codec, path_idx[j]);
					path_idx[j] = 0;
					break;
				}
			}
		}
		dac = dacs[i];
		if (!dac) {
			if (num_outs > 2)
				dac = FUNC10(codec, FUNC2(codec, i), pin);
			if (!dac)
				dac = FUNC10(codec, dacs[0], pin);
			if (!dac)
				dac = FUNC10(codec, FUNC2(codec, i), pin);
			if (dac) {
				if (!i)
					badness += bad->shared_primary;
				else if (i == 1)
					badness += bad->shared_surr;
				else
					badness += bad->shared_clfe;
			} else if (FUNC5(codec, spec->private_dac_nids[0], pin)) {
				dac = spec->private_dac_nids[0];
				badness += bad->shared_surr_main;
			} else if (!i)
				badness += bad->no_primary_dac;
			else
				badness += bad->no_dac;
		}
		if (!dac)
			continue;
		path = FUNC7(codec, dac, pin, -spec->mixer_nid);
		if (!path && !i && spec->mixer_nid) {
			/* try with aamix */
			path = FUNC7(codec, dac, pin, 0);
		}
		if (!path) {
			dac = dacs[i] = 0;
			badness += bad->no_dac;
		} else {
			/* print_nid_path(codec, "output", path); */
			path->active = true;
			path_idx[i] = FUNC9(codec, path);
			badness += FUNC0(codec, path);
		}
	}

	return badness;
}