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
struct constraint_expr {struct constraint_expr* type_names; int /*<<< orphan*/  negset; int /*<<< orphan*/  types; int /*<<< orphan*/  names; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct constraint_expr*) ; 

__attribute__((used)) static void FUNC2(struct constraint_expr *expr)
{
	if (expr) {
		FUNC0(&expr->names);
		if (expr->type_names) {
			FUNC0(&expr->type_names->types);
			FUNC0(&expr->type_names->negset);
			FUNC1(expr->type_names);
		}
		FUNC1(expr);
	}
}