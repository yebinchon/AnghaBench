#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct fd {int dummy; } ;
struct bpf_verifier_env {int used_map_cnt; TYPE_2__* prog; struct bpf_map** used_maps; struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_map {int /*<<< orphan*/  value_size; TYPE_1__* ops; } ;
struct bpf_insn_aux_data {int map_index; scalar_t__ map_off; } ;
struct bpf_insn {int code; scalar_t__ imm; scalar_t__ dst_reg; scalar_t__ src_reg; scalar_t__ off; } ;
struct TYPE_6__ {int len; struct bpf_insn* insnsi; } ;
struct TYPE_5__ {int (* map_direct_value_addr ) (struct bpf_map*,int*,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int BPF_DW ; 
 int BPF_IMM ; 
 int BPF_LD ; 
 scalar_t__ BPF_LDX ; 
 scalar_t__ BPF_MAX_VAR_OFF ; 
 scalar_t__ BPF_MEM ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ BPF_PSEUDO_MAP_FD ; 
 scalar_t__ BPF_PSEUDO_MAP_VALUE ; 
 scalar_t__ BPF_STX ; 
 scalar_t__ BPF_XADD ; 
 int E2BIG ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct bpf_map*) ; 
 int MAX_USED_MAPS ; 
 int FUNC3 (struct bpf_map*) ; 
 struct bpf_map* FUNC4 (struct fd) ; 
 scalar_t__ FUNC5 (TYPE_2__*,struct bpf_map*) ; 
 struct bpf_map* FUNC6 (struct bpf_map*,int) ; 
 scalar_t__ FUNC7 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (struct bpf_verifier_env*,struct bpf_map*,TYPE_2__*) ; 
 struct fd FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct fd) ; 
 int FUNC13 (struct bpf_map*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int FUNC15(struct bpf_verifier_env *env)
{
	struct bpf_insn *insn = env->prog->insnsi;
	int insn_cnt = env->prog->len;
	int i, j, err;

	err = FUNC9(env->prog);
	if (err)
		return err;

	for (i = 0; i < insn_cnt; i++, insn++) {
		if (FUNC0(insn->code) == BPF_LDX &&
		    (FUNC1(insn->code) != BPF_MEM || insn->imm != 0)) {
			FUNC14(env, "BPF_LDX uses reserved fields\n");
			return -EINVAL;
		}

		if (FUNC0(insn->code) == BPF_STX &&
		    ((FUNC1(insn->code) != BPF_MEM &&
		      FUNC1(insn->code) != BPF_XADD) || insn->imm != 0)) {
			FUNC14(env, "BPF_STX uses reserved fields\n");
			return -EINVAL;
		}

		if (insn[0].code == (BPF_LD | BPF_IMM | BPF_DW)) {
			struct bpf_insn_aux_data *aux;
			struct bpf_map *map;
			struct fd f;
			u64 addr;

			if (i == insn_cnt - 1 || insn[1].code != 0 ||
			    insn[1].dst_reg != 0 || insn[1].src_reg != 0 ||
			    insn[1].off != 0) {
				FUNC14(env, "invalid bpf_ld_imm64 insn\n");
				return -EINVAL;
			}

			if (insn[0].src_reg == 0)
				/* valid generic load 64-bit imm */
				goto next_insn;

			/* In final convert_pseudo_ld_imm64() step, this is
			 * converted into regular 64-bit imm load insn.
			 */
			if ((insn[0].src_reg != BPF_PSEUDO_MAP_FD &&
			     insn[0].src_reg != BPF_PSEUDO_MAP_VALUE) ||
			    (insn[0].src_reg == BPF_PSEUDO_MAP_FD &&
			     insn[1].imm != 0)) {
				FUNC14(env,
					"unrecognized bpf_ld_imm64 insn\n");
				return -EINVAL;
			}

			f = FUNC11(insn[0].imm);
			map = FUNC4(f);
			if (FUNC2(map)) {
				FUNC14(env, "fd %d is not pointing to valid bpf_map\n",
					insn[0].imm);
				return FUNC3(map);
			}

			err = FUNC10(env, map, env->prog);
			if (err) {
				FUNC12(f);
				return err;
			}

			aux = &env->insn_aux_data[i];
			if (insn->src_reg == BPF_PSEUDO_MAP_FD) {
				addr = (unsigned long)map;
			} else {
				u32 off = insn[1].imm;

				if (off >= BPF_MAX_VAR_OFF) {
					FUNC14(env, "direct value offset of %u is not allowed\n", off);
					FUNC12(f);
					return -EINVAL;
				}

				if (!map->ops->map_direct_value_addr) {
					FUNC14(env, "no direct value access support for this map type\n");
					FUNC12(f);
					return -EINVAL;
				}

				err = map->ops->map_direct_value_addr(map, &addr, off);
				if (err) {
					FUNC14(env, "invalid access to map value pointer, value_size=%u off=%u\n",
						map->value_size, off);
					FUNC12(f);
					return err;
				}

				aux->map_off = off;
				addr += off;
			}

			insn[0].imm = (u32)addr;
			insn[1].imm = addr >> 32;

			/* check whether we recorded this map already */
			for (j = 0; j < env->used_map_cnt; j++) {
				if (env->used_maps[j] == map) {
					aux->map_index = j;
					FUNC12(f);
					goto next_insn;
				}
			}

			if (env->used_map_cnt >= MAX_USED_MAPS) {
				FUNC12(f);
				return -E2BIG;
			}

			/* hold the map. If the program is rejected by verifier,
			 * the map will be released by release_maps() or it
			 * will be used by the valid program until it's unloaded
			 * and all maps are released in free_used_maps()
			 */
			map = FUNC6(map, false);
			if (FUNC2(map)) {
				FUNC12(f);
				return FUNC3(map);
			}

			aux->map_index = env->used_map_cnt;
			env->used_maps[env->used_map_cnt++] = map;

			if (FUNC7(map) &&
			    FUNC5(env->prog, map)) {
				FUNC14(env, "only one cgroup storage of each type is allowed\n");
				FUNC12(f);
				return -EBUSY;
			}

			FUNC12(f);
next_insn:
			insn++;
			i++;
			continue;
		}

		/* Basic sanity check before we invest more work here. */
		if (!FUNC8(insn->code)) {
			FUNC14(env, "unknown opcode %02x\n", insn->code);
			return -EINVAL;
		}
	}

	/* now all pseudo BPF_LD_IMM64 instructions load valid
	 * 'struct bpf_map *' into a register instead of user map_fd.
	 * These pointers will be used later by verifier to validate map access.
	 */
	return 0;
}