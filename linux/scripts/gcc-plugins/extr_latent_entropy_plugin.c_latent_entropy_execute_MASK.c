#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* basic_block ;
struct TYPE_7__ {struct TYPE_7__* next_bb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfun ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  long_unsigned_type_node ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC13(void)
{
	basic_block bb;
	tree local_entropy;

	if (!FUNC2())
		return 0;

	/* prepare for step 2 below */
	FUNC4(FUNC11(FUNC0(cfun)));
	bb = FUNC9(FUNC0(cfun));
	if (!FUNC8(bb)) {
		FUNC12(FUNC10(FUNC0(cfun)));
		FUNC4(FUNC11(FUNC0(cfun)));
		bb = FUNC9(FUNC0(cfun));
	}

	/* 1. create the local entropy variable */
	local_entropy = FUNC3(long_unsigned_type_node, "local_entropy");

	/* 2. initialize the local entropy variable */
	FUNC5(bb, local_entropy);

	bb = bb->next_bb;

	/*
	 * 3. instrument each BB with an operation on the
	 *    local entropy variable
	 */
	while (bb != FUNC1(cfun)) {
		FUNC7(bb, local_entropy);
		bb = bb->next_bb;
	};

	/* 4. mix local entropy into the global entropy variable */
	FUNC6(local_entropy);
	return 0;
}