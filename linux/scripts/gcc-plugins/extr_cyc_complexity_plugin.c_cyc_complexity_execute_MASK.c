#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* file; } ;
typedef  TYPE_1__ expanded_location ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfun ; 
 int /*<<< orphan*/  current_function_decl ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static unsigned int FUNC6(void)
{
	int complexity;
	expanded_location xloc;

	/* M = E - N + 2P */
	complexity = FUNC5(cfun) - FUNC4(cfun) + 2;

	xloc = FUNC2(FUNC1(current_function_decl));
	FUNC3(stderr, "Cyclomatic Complexity %d %s:%s\n", complexity,
		xloc.file, FUNC0(current_function_decl));

	return 0;
}