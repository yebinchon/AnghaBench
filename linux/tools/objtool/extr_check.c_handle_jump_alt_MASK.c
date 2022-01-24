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
struct special_alt {int dummy; } ;
struct objtool_file {int dummy; } ;
struct instruction {scalar_t__ type; int /*<<< orphan*/  offset; int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 scalar_t__ INSN_JUMP_UNCONDITIONAL ; 
 scalar_t__ INSN_NOP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 struct instruction* FUNC1 (struct instruction*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct objtool_file *file,
			   struct special_alt *special_alt,
			   struct instruction *orig_insn,
			   struct instruction **new_insn)
{
	if (orig_insn->type == INSN_NOP)
		return 0;

	if (orig_insn->type != INSN_JUMP_UNCONDITIONAL) {
		FUNC0("unsupported instruction at jump label",
			  orig_insn->sec, orig_insn->offset);
		return -1;
	}

	*new_insn = FUNC1(orig_insn, list);
	return 0;
}