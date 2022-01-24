#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int len; struct bpf_insn* insns; } ;
struct TYPE_4__ {TYPE_1__ ptr; } ;
struct bpf_test {int stack_depth; TYPE_2__ u; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC1 () ; 
 struct bpf_insn FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int BPF_MAXINSNS ; 
 int /*<<< orphan*/  BPF_MOV ; 
 struct bpf_insn FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC4 (int,int /*<<< orphan*/ ,int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R10 ; 
 struct bpf_insn* FUNC5 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bpf_test *self, int size)
{
	unsigned int len = BPF_MAXINSNS;
	struct bpf_insn *insn;
	int i;

	insn = FUNC5(len, sizeof(*insn), GFP_KERNEL);
	if (!insn)
		return -ENOMEM;

	insn[0] = FUNC0(BPF_MOV, R0, 1);
	insn[1] = FUNC4(size, R10, -40, 42);

	for (i = 2; i < len - 2; i++)
		insn[i] = FUNC3(size, R10, R0, -40);

	insn[len - 2] = FUNC2(size, R0, R10, -40);
	insn[len - 1] = FUNC1();

	self->u.ptr.insns = insn;
	self->u.ptr.len = len;
	self->stack_depth = 40;

	return 0;
}