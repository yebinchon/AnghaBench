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
struct sock_addr_test {int dummy; } ;
struct bpf_insn {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  insns ;

/* Variables and functions */
 struct bpf_insn FUNC0 () ; 
 struct bpf_insn FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int FUNC2 (struct sock_addr_test const*,struct bpf_insn*,int) ; 

__attribute__((used)) static int FUNC3(const struct sock_addr_test *test,
				   int32_t rc)
{
	struct bpf_insn insns[] = {
		/* return rc */
		FUNC1(BPF_REG_0, rc),
		FUNC0(),
	};
	return FUNC2(test, insns, sizeof(insns) / sizeof(struct bpf_insn));
}