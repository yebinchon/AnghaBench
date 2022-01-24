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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  gimple_stmt_iterator ;
typedef  int /*<<< orphan*/  gimple ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONSTRUCTOR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSI_NEW_STMT ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ byref ; 
 int /*<<< orphan*/  cfun ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC22(tree var)
{
	basic_block bb;
	gimple_stmt_iterator gsi;
	tree initializer;
	gimple init_stmt;
	tree type;

	/* this is the original entry bb before the forced split */
	bb = FUNC20(FUNC2(cfun));

	/* first check if variable is already initialized, warn otherwise */
	for (gsi = FUNC17(bb); !FUNC14(gsi); FUNC16(&gsi)) {
		gimple stmt = FUNC18(gsi);
		tree rhs1;

		/* we're looking for an assignment of a single rhs... */
		if (!FUNC10(stmt))
			continue;
		rhs1 = FUNC9(stmt);
#if BUILDING_GCC_VERSION >= 4007
		/* ... of a non-clobbering expression... */
		if (TREE_CLOBBER_P(rhs1))
			continue;
#endif
		/* ... to our variable... */
		if (FUNC12(stmt) != var)
			continue;
		/* if it's an initializer then we're good */
		if (FUNC5(rhs1) == CONSTRUCTOR)
			return;
	}

	/* these aren't the 0days you're looking for */
	if (verbose)
		FUNC19(FUNC1(var),
			"%s variable will be forcibly initialized",
			(byref && FUNC3(var)) ? "byref"
							 : "userspace");

	/* build the initializer expression */
	type = FUNC6(var);
	if (FUNC0(type))
		initializer = FUNC7(type, NULL);
	else
		initializer = FUNC8(type, integer_zero_node);

	/* build the initializer stmt */
	init_stmt = FUNC11(var, initializer);
	gsi = FUNC13(FUNC20(FUNC2(cfun)));
	FUNC15(&gsi, init_stmt, GSI_NEW_STMT);
	FUNC21(init_stmt);
}