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
struct instruction {int /*<<< orphan*/  offset; int /*<<< orphan*/  sec; } ;
struct insn_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct insn_state*) ; 
 int FUNC2 (struct instruction*,struct insn_state*) ; 

__attribute__((used)) static int FUNC3(struct instruction *insn, struct insn_state *state)
{
	if (FUNC1(state)) {
		FUNC0("sibling call from callable instruction with modified stack frame",
				insn->sec, insn->offset);
		return 1;
	}

	return FUNC2(insn, state);
}