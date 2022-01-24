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
struct pt_regs {int dummy; } ;
struct bpf_raw_tp_regs {struct pt_regs* regs; } ;

/* Variables and functions */
 int FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  EBUSY ; 
 struct pt_regs* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  bpf_raw_tp_nest_level ; 
 int /*<<< orphan*/  bpf_raw_tp_regs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct bpf_raw_tp_regs* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pt_regs *FUNC6(void)
{
	struct bpf_raw_tp_regs *tp_regs = FUNC5(&bpf_raw_tp_regs);
	int nest_level = FUNC4(bpf_raw_tp_nest_level);

	if (FUNC2(nest_level > FUNC0(tp_regs->regs))) {
		FUNC3(bpf_raw_tp_nest_level);
		return FUNC1(-EBUSY);
	}

	return &tp_regs->regs[nest_level - 1];
}