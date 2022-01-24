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
struct TYPE_2__ {int nr; int /*<<< orphan*/ * fds; } ;
struct bpf_program {size_t insns_cnt; int idx; int /*<<< orphan*/  type; TYPE_1__ instances; int /*<<< orphan*/  insns; int /*<<< orphan*/  pin_name; int /*<<< orphan*/  section_name; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_UNSPEC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_program*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(void *data, size_t size, char *section_name, int idx,
		  struct bpf_program *prog)
{
	const size_t bpf_insn_sz = sizeof(struct bpf_insn);

	if (size == 0 || size % bpf_insn_sz) {
		FUNC5("corrupted section '%s', size: %zu\n",
			   section_name, size);
		return -EINVAL;
	}

	FUNC4(prog, 0, sizeof(*prog));

	prog->section_name = FUNC6(section_name);
	if (!prog->section_name) {
		FUNC5("failed to alloc name for prog under section(%d) %s\n",
			   idx, section_name);
		goto errout;
	}

	prog->pin_name = FUNC0(prog);
	if (!prog->pin_name) {
		FUNC5("failed to alloc pin name for prog under section(%d) %s\n",
			   idx, section_name);
		goto errout;
	}

	prog->insns = FUNC2(size);
	if (!prog->insns) {
		FUNC5("failed to alloc insns for prog under section %s\n",
			   section_name);
		goto errout;
	}
	prog->insns_cnt = size / bpf_insn_sz;
	FUNC3(prog->insns, data, size);
	prog->idx = idx;
	prog->instances.fds = NULL;
	prog->instances.nr = -1;
	prog->type = BPF_PROG_TYPE_UNSPEC;

	return 0;
errout:
	FUNC1(prog);
	return -ENOMEM;
}