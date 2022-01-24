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
struct rnd_state {int dummy; } ;
struct TYPE_3__ {unsigned int len; struct sock_filter* insns; } ;
struct TYPE_4__ {TYPE_1__ ptr; } ;
struct bpf_test {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int BPF_A ; 
 int BPF_ADD ; 
 int BPF_ALU ; 
 int BPF_K ; 
 unsigned int BPF_MAXINSNS ; 
 int BPF_RET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sock_filter FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct sock_filter* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rnd_state*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct rnd_state*) ; 

__attribute__((used)) static int FUNC4(struct bpf_test *self)
{
	unsigned int len = BPF_MAXINSNS;
	struct sock_filter *insn;
	struct rnd_state rnd;
	int i;

	insn = FUNC1(len, sizeof(*insn), GFP_KERNEL);
	if (!insn)
		return -ENOMEM;

	FUNC2(&rnd, 3141592653589793238ULL);

	for (i = 0; i < len - 1; i++) {
		__u32 k = FUNC3(&rnd);

		insn[i] = FUNC0(BPF_ALU | BPF_ADD | BPF_K, k);
	}

	insn[len - 1] = FUNC0(BPF_RET | BPF_A, 0);

	self->u.ptr.insns = insn;
	self->u.ptr.len = len;

	return 0;
}