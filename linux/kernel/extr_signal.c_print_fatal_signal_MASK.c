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
struct pt_regs {int ip; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 struct pt_regs* FUNC6 () ; 

__attribute__((used)) static void FUNC7(int signr)
{
	struct pt_regs *regs = FUNC6();
	FUNC2("potentially unexpected fatal signal %d.\n", signr);

#if defined(__i386__) && !defined(__arch_um__)
	pr_info("code at %08lx: ", regs->ip);
	{
		int i;
		for (i = 0; i < 16; i++) {
			unsigned char insn;

			if (get_user(insn, (unsigned char *)(regs->ip + i)))
				break;
			pr_cont("%02x ", insn);
		}
	}
	pr_cont("\n");
#endif
	FUNC3();
	FUNC5(regs);
	FUNC4();
}