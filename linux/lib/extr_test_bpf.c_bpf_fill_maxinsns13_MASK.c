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
struct sock_filter {int dummy; } ;
struct TYPE_3__ {unsigned int len; struct sock_filter* insns; } ;
struct TYPE_4__ {TYPE_1__ ptr; } ;
struct bpf_test {TYPE_2__ u; } ;

/* Variables and functions */
 int BPF_A ; 
 int BPF_ALU ; 
 int BPF_B ; 
 int BPF_IMM ; 
 int BPF_LD ; 
 int BPF_LDX ; 
 unsigned int BPF_MAXINSNS ; 
 int BPF_MSH ; 
 int BPF_RET ; 
 int BPF_X ; 
 int BPF_XOR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sock_filter FUNC0 (int,int) ; 
 struct sock_filter* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bpf_test *self)
{
	unsigned int len = BPF_MAXINSNS;
	struct sock_filter *insn;
	int i = 0;

	insn = FUNC1(len, sizeof(*insn), GFP_KERNEL);
	if (!insn)
		return -ENOMEM;

	for (i = 0; i < len - 3; i++)
		insn[i] = FUNC0(BPF_LDX | BPF_B | BPF_MSH, 0);

	insn[len - 3] = FUNC0(BPF_LD | BPF_IMM, 0xabababab);
	insn[len - 2] = FUNC0(BPF_ALU | BPF_XOR | BPF_X, 0);
	insn[len - 1] = FUNC0(BPF_RET | BPF_A, 0);

	self->u.ptr.insns = insn;
	self->u.ptr.len = len;

	return 0;
}