#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx_insn ;
typedef  int /*<<< orphan*/ * rtx ;
struct TYPE_2__ {scalar_t__ calls_alloca; } ;

/* Variables and functions */
 scalar_t__ CALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MEM ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ NOTE ; 
 scalar_t__ NOTE_INSN_CALL_ARG_LOCATION ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* cfun ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ track_function_decl ; 

__attribute__((used)) static unsigned int FUNC11(void)
{
	rtx_insn *insn, *next;

	if (cfun->calls_alloca)
		return 0;

	if (FUNC10())
		return 0;

	/*
	 * Find stackleak_track_stack() calls. Loop through the chain of insns,
	 * which is an RTL representation of the code for a function.
	 *
	 * The example of a matching insn:
	 *  (call_insn 8 4 10 2 (call (mem (symbol_ref ("stackleak_track_stack")
	 *  [flags 0x41] <function_decl 0x7f7cd3302a80 stackleak_track_stack>)
	 *  [0 stackleak_track_stack S1 A8]) (0)) 675 {*call} (expr_list
	 *  (symbol_ref ("stackleak_track_stack") [flags 0x41] <function_decl
	 *  0x7f7cd3302a80 stackleak_track_stack>) (expr_list (0) (nil))) (nil))
	 */
	for (insn = FUNC9(); insn; insn = next) {
		rtx body;

		next = FUNC2(insn);

		/* Check the expression code of the insn */
		if (!FUNC0(insn))
			continue;

		/*
		 * Check the expression code of the insn body, which is an RTL
		 * Expression (RTX) describing the side effect performed by
		 * that insn.
		 */
		body = FUNC4(insn);

		if (FUNC1(body) == PARALLEL)
			body = FUNC7(body, 0, 0);

		if (FUNC1(body) != CALL)
			continue;

		/*
		 * Check the first operand of the call expression. It should
		 * be a mem RTX describing the needed subroutine with a
		 * symbol_ref RTX.
		 */
		body = FUNC6(body, 0);
		if (FUNC1(body) != MEM)
			continue;

		body = FUNC6(body, 0);
		if (FUNC1(body) != SYMBOL_REF)
			continue;

		if (FUNC5(body) != track_function_decl)
			continue;

		/* Delete the stackleak_track_stack() call */
		FUNC8(insn);
#if BUILDING_GCC_VERSION >= 4007 && BUILDING_GCC_VERSION < 8000
		if (GET_CODE(next) == NOTE &&
		    NOTE_KIND(next) == NOTE_INSN_CALL_ARG_LOCATION) {
			insn = next;
			next = NEXT_INSN(insn);
			delete_insn_and_edges(insn);
		}
#endif
	}

	return 0;
}