#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gimple_stmt_iterator ;
typedef  int /*<<< orphan*/  gimple ;
typedef  int /*<<< orphan*/  gcall ;
typedef  int /*<<< orphan*/  cgraph_node_ptr ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSI_CONTINUE_LINKING ; 
 int /*<<< orphan*/  GSI_SAME_STMT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  track_function_decl ; 

__attribute__((used)) static void FUNC10(gimple_stmt_iterator *gsi, bool after)
{
	gimple stmt;
	gcall *stackleak_track_stack;
	cgraph_node_ptr node;
	int frequency;
	basic_block bb;

	/* Insert call to void stackleak_track_stack(void) */
	stmt = FUNC7(track_function_decl, 0);
	stackleak_track_stack = FUNC0(stmt);
	if (after) {
		FUNC8(gsi, stackleak_track_stack,
						GSI_CONTINUE_LINKING);
	} else {
		FUNC9(gsi, stackleak_track_stack, GSI_SAME_STMT);
	}

	/* Update the cgraph */
	bb = FUNC6(stackleak_track_stack);
	node = FUNC2(track_function_decl);
	FUNC5(node);
	frequency = FUNC4(current_function_decl, bb);
	FUNC1(FUNC3(current_function_decl), node,
			stackleak_track_stack, bb->count, frequency);
}