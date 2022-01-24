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
struct nid_path {scalar_t__ active; } ;
struct hda_input_mux {unsigned int num_items; } ;
struct hda_gen_spec {unsigned int* cur_mux; int /*<<< orphan*/  (* cap_sync_hook ) (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ dyn_adc_switch; scalar_t__ hp_mic; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,unsigned int) ; 
 struct nid_path* FUNC1 (struct hda_codec*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,struct nid_path*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec, unsigned int adc_idx,
		      unsigned int idx)
{
	struct hda_gen_spec *spec = codec->spec;
	const struct hda_input_mux *imux;
	struct nid_path *old_path, *path;

	imux = &spec->input_mux;
	if (!imux->num_items)
		return 0;

	if (idx >= imux->num_items)
		idx = imux->num_items - 1;
	if (spec->cur_mux[adc_idx] == idx)
		return 0;

	old_path = FUNC1(codec, adc_idx, spec->cur_mux[adc_idx]);
	if (!old_path)
		return 0;
	if (old_path->active)
		FUNC3(codec, old_path, false, false);

	spec->cur_mux[adc_idx] = idx;

	if (spec->hp_mic)
		FUNC5(codec, adc_idx, false);

	if (spec->dyn_adc_switch)
		FUNC0(codec, idx);

	path = FUNC1(codec, adc_idx, idx);
	if (!path)
		return 0;
	if (path->active)
		return 0;
	FUNC3(codec, path, true, false);
	if (spec->cap_sync_hook)
		spec->cap_sync_hook(codec, NULL, NULL);
	FUNC2(codec, old_path);
	return 1;
}