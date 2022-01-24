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
struct whitelist_entry {int /*<<< orphan*/  rhs; int /*<<< orphan*/  lhs; scalar_t__ pathname; } ;
typedef  int /*<<< orphan*/  gimple ;
struct TYPE_3__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ expanded_location ;
typedef  int /*<<< orphan*/  const_tree ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct whitelist_entry* whitelist ; 

__attribute__((used)) static bool FUNC4(gimple stmt, const_tree lhs_tree, const_tree rhs_tree)
{
	const struct whitelist_entry *entry;
	expanded_location xloc = FUNC0(FUNC1(stmt));

	for (entry = whitelist; entry->pathname; entry++) {
		if (!FUNC2(xloc.file, entry->pathname))
			continue;

		if (FUNC3(stmt, lhs_tree, entry->lhs) && FUNC3(stmt, rhs_tree, entry->rhs))
			return true;
	}

	return false;
}