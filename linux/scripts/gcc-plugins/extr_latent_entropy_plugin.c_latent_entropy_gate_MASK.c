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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int /*<<< orphan*/  preds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfun ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(void)
{
	tree list;

	/* don't bother with noreturn functions for now */
	if (FUNC3(current_function_decl))
		return false;

	/* gcc-4.5 doesn't discover some trivial noreturn functions */
	if (FUNC1(FUNC2(cfun)->preds) == 0)
		return false;

	list = FUNC0(current_function_decl);
	return FUNC4("latent_entropy", list) != NULL_TREE;
}