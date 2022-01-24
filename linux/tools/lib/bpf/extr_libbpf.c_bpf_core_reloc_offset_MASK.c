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
struct ids_vec {int len; int /*<<< orphan*/ * data; } ;
struct hashmap {int dummy; } ;
struct btf_type {int /*<<< orphan*/  name_off; } ;
struct btf {int dummy; } ;
struct bpf_program {int dummy; } ;
struct bpf_offset_reloc {int insn_off; int /*<<< orphan*/  access_str_off; int /*<<< orphan*/  type_id; } ;
struct bpf_core_spec {int offset; TYPE_1__* spec; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  type_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ FUNC0 (struct ids_vec*) ; 
 int /*<<< orphan*/  LIBBPF_DEBUG ; 
 int FUNC1 (struct ids_vec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bpf_core_spec*) ; 
 struct ids_vec* FUNC3 (struct btf const*,int /*<<< orphan*/ ,struct btf const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ids_vec*) ; 
 int FUNC5 (struct bpf_program*,int,int,int) ; 
 int FUNC6 (struct bpf_core_spec*,struct btf const*,int /*<<< orphan*/ ,struct bpf_core_spec*) ; 
 int FUNC7 (struct btf const*,int /*<<< orphan*/ ,char const*,struct bpf_core_spec*) ; 
 char* FUNC8 (struct bpf_program*,int) ; 
 char* FUNC9 (struct btf const*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC10 (struct btf const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hashmap*,void const*,void**) ; 
 int FUNC12 (struct hashmap*,void const*,struct ids_vec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int,int,...) ; 
 scalar_t__ FUNC16 (char const*) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct bpf_program *prog,
				 const struct bpf_offset_reloc *relo,
				 int relo_idx,
				 const struct btf *local_btf,
				 const struct btf *targ_btf,
				 struct hashmap *cand_cache)
{
	const char *prog_name = FUNC8(prog, false);
	struct bpf_core_spec local_spec, cand_spec, targ_spec;
	const void *type_key = FUNC17(relo->type_id);
	const struct btf_type *local_type, *cand_type;
	const char *local_name, *cand_name;
	struct ids_vec *cand_ids;
	__u32 local_id, cand_id;
	const char *spec_str;
	int i, j, err;

	local_id = relo->type_id;
	local_type = FUNC10(local_btf, local_id);
	if (!local_type)
		return -EINVAL;

	local_name = FUNC9(local_btf, local_type->name_off);
	if (FUNC16(local_name))
		return -EINVAL;

	spec_str = FUNC9(local_btf, relo->access_str_off);
	if (FUNC16(spec_str))
		return -EINVAL;

	err = FUNC7(local_btf, local_id, spec_str, &local_spec);
	if (err) {
		FUNC15("prog '%s': relo #%d: parsing [%d] %s + %s failed: %d\n",
			   prog_name, relo_idx, local_id, local_name, spec_str,
			   err);
		return -EINVAL;
	}

	FUNC14("prog '%s': relo #%d: spec is ", prog_name, relo_idx);
	FUNC2(LIBBPF_DEBUG, &local_spec);
	FUNC13(LIBBPF_DEBUG, "\n");

	if (!FUNC11(cand_cache, type_key, (void **)&cand_ids)) {
		cand_ids = FUNC3(local_btf, local_id, targ_btf);
		if (FUNC0(cand_ids)) {
			FUNC15("prog '%s': relo #%d: target candidate search failed for [%d] %s: %ld",
				   prog_name, relo_idx, local_id, local_name,
				   FUNC1(cand_ids));
			return FUNC1(cand_ids);
		}
		err = FUNC12(cand_cache, type_key, cand_ids, NULL, NULL);
		if (err) {
			FUNC4(cand_ids);
			return err;
		}
	}

	for (i = 0, j = 0; i < cand_ids->len; i++) {
		cand_id = cand_ids->data[i];
		cand_type = FUNC10(targ_btf, cand_id);
		cand_name = FUNC9(targ_btf, cand_type->name_off);

		err = FUNC6(&local_spec, targ_btf,
					  cand_id, &cand_spec);
		FUNC14("prog '%s': relo #%d: matching candidate #%d %s against spec ",
			 prog_name, relo_idx, i, cand_name);
		FUNC2(LIBBPF_DEBUG, &cand_spec);
		FUNC13(LIBBPF_DEBUG, ": %d\n", err);
		if (err < 0) {
			FUNC15("prog '%s': relo #%d: matching error: %d\n",
				   prog_name, relo_idx, err);
			return err;
		}
		if (err == 0)
			continue;

		if (j == 0) {
			targ_spec = cand_spec;
		} else if (cand_spec.offset != targ_spec.offset) {
			/* if there are many candidates, they should all
			 * resolve to the same offset
			 */
			FUNC15("prog '%s': relo #%d: offset ambiguity: %u != %u\n",
				   prog_name, relo_idx, cand_spec.offset,
				   targ_spec.offset);
			return -EINVAL;
		}

		cand_ids->data[j++] = cand_spec.spec[0].type_id;
	}

	cand_ids->len = j;
	if (cand_ids->len == 0) {
		FUNC15("prog '%s': relo #%d: no matching targets found for [%d] %s + %s\n",
			   prog_name, relo_idx, local_id, local_name, spec_str);
		return -ESRCH;
	}

	err = FUNC5(prog, relo->insn_off,
				  local_spec.offset, targ_spec.offset);
	if (err) {
		FUNC15("prog '%s': relo #%d: failed to patch insn at offset %d: %d\n",
			   prog_name, relo_idx, relo->insn_off, err);
		return -EINVAL;
	}

	return 0;
}