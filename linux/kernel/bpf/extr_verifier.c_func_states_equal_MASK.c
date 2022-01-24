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
struct idpair {int dummy; } ;
struct bpf_func_state {int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ID_MAP_SIZE ; 
 int MAX_BPF_REG ; 
 struct idpair* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct idpair*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_func_state*,struct bpf_func_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct idpair*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_func_state*,struct bpf_func_state*,struct idpair*) ; 

__attribute__((used)) static bool FUNC5(struct bpf_func_state *old,
			      struct bpf_func_state *cur)
{
	struct idpair *idmap;
	bool ret = false;
	int i;

	idmap = FUNC0(ID_MAP_SIZE, sizeof(struct idpair), GFP_KERNEL);
	/* If we failed to allocate the idmap, just say it's not safe */
	if (!idmap)
		return false;

	for (i = 0; i < MAX_BPF_REG; i++) {
		if (!FUNC3(&old->regs[i], &cur->regs[i], idmap))
			goto out_free;
	}

	if (!FUNC4(old, cur, idmap))
		goto out_free;

	if (!FUNC2(old, cur))
		goto out_free;
	ret = true;
out_free:
	FUNC1(idmap);
	return ret;
}