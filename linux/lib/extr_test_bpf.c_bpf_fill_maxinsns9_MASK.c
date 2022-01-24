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
struct bpf_test {TYPE_2__ u; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC1 () ; 
 int /*<<< orphan*/  BPF_JA ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int BPF_MAXINSNS ; 
 int /*<<< orphan*/  BPF_MOV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  R0 ; 
 struct bpf_insn* FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bpf_test *self)
{
	unsigned int len = BPF_MAXINSNS;
	struct bpf_insn *insn;
	int i;

	insn = FUNC3(len, sizeof(*insn), GFP_KERNEL);
	if (!insn)
		return -ENOMEM;

	insn[0] = FUNC2(BPF_JA, 0, 0, len - 2);
	insn[1] = FUNC0(BPF_MOV, R0, 0xcbababab);
	insn[2] = FUNC1();

	for (i = 3; i < len - 2; i++)
		insn[i] = FUNC0(BPF_MOV, R0, 0xfefefefe);

	insn[len - 2] = FUNC1();
	insn[len - 1] = FUNC2(BPF_JA, 0, 0, -(len - 1));

	self->u.ptr.insns = insn;
	self->u.ptr.len = len;

	return 0;
}