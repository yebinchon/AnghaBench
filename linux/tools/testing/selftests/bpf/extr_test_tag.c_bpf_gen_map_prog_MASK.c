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
typedef  int /*<<< orphan*/  tmp ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct bpf_insn FUNC2 (int,int) ; 
 int /*<<< orphan*/  BPF_MOV ; 
 int BPF_REG_10 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bpf_insn*,int) ; 
 int /*<<< orphan*/ * prog ; 

__attribute__((used)) static void FUNC4(unsigned int insns, int fd_map)
{
	int i, j = 0;

	for (i = 0; i + 1 < insns; i += 2) {
		struct bpf_insn tmp[] = {
			FUNC2(j++ % BPF_REG_10, fd_map)
		};

		FUNC3(&prog[i], tmp, sizeof(tmp));
	}
	if (insns % 2 == 0)
		prog[insns - 2] = FUNC0(BPF_MOV, i % BPF_REG_10, 42);
	prog[insns - 1] = FUNC1();
}