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
struct bpf_insn {int dummy; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_insn*) ; 
 struct bpf_insn FUNC1 () ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int FUNC3 (int,struct bpf_insn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(enum bpf_prog_type prog_type)
{
	struct bpf_insn prog[] = {
		FUNC2(BPF_REG_0, 42),
		FUNC1(),
	};

	return FUNC3(prog_type, prog,
				FUNC0(prog), "GPL", 0, NULL, 0);
}