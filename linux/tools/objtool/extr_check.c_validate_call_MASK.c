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
struct instruction {int /*<<< orphan*/  offset; int /*<<< orphan*/  sec; int /*<<< orphan*/  call_dest; } ;
struct insn_state {scalar_t__ df; scalar_t__ uaccess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct instruction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct instruction *insn, struct insn_state *state)
{
	if (state->uaccess && !FUNC2(insn->call_dest)) {
		FUNC0("call to %s() with UACCESS enabled",
				insn->sec, insn->offset, FUNC1(insn));
		return 1;
	}

	if (state->df) {
		FUNC0("call to %s() with DF set",
				insn->sec, insn->offset, FUNC1(insn));
		return 1;
	}

	return 0;
}