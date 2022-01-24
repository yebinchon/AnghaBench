#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  expr; } ;
struct TYPE_4__ {scalar_t__ tri; int /*<<< orphan*/  expr; } ;
struct symbol {TYPE_1__ rev_dep; TYPE_2__ dir_dep; int /*<<< orphan*/  name; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gstr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gstr*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ mod ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (struct gstr*) ; 
 struct gstr FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gstr*,char*,...) ; 
 scalar_t__ yes ; 

__attribute__((used)) static void FUNC6(struct symbol *sym)
{
	struct gstr gs = FUNC4();

	FUNC5(&gs,
		   "\nWARNING: unmet direct dependencies detected for %s\n",
		   sym->name);
	FUNC5(&gs,
		   "  Depends on [%c]: ",
		   sym->dir_dep.tri == mod ? 'm' : 'n');
	FUNC0(sym->dir_dep.expr, &gs);
	FUNC5(&gs, "\n");

	FUNC1(sym->rev_dep.expr, &gs, yes,
			       "  Selected by [y]:\n");
	FUNC1(sym->rev_dep.expr, &gs, mod,
			       "  Selected by [m]:\n");

	FUNC2(FUNC3(&gs), stderr);
}