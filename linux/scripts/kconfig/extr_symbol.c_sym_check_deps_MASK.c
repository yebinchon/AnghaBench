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
struct symbol {int flags; } ;
struct property {int dummy; } ;
struct dep_stack {int dummy; } ;

/* Variables and functions */
 int SYMBOL_CHECK ; 
 int SYMBOL_CHECKED ; 
 int /*<<< orphan*/  FUNC0 (struct dep_stack*,struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct symbol* FUNC2 (struct property*) ; 
 struct symbol* FUNC3 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*) ; 
 struct symbol* FUNC5 (struct symbol*) ; 
 struct property* FUNC6 (struct symbol*) ; 
 scalar_t__ FUNC7 (struct symbol*) ; 
 scalar_t__ FUNC8 (struct symbol*) ; 

struct symbol *FUNC9(struct symbol *sym)
{
	struct symbol *sym2;
	struct property *prop;

	if (sym->flags & SYMBOL_CHECK) {
		FUNC4(sym);
		return sym;
	}
	if (sym->flags & SYMBOL_CHECKED)
		return NULL;

	if (FUNC8(sym)) {
		struct dep_stack stack;

		/* for choice groups start the check with main choice symbol */
		FUNC0(&stack, sym);
		prop = FUNC6(sym);
		sym2 = FUNC9(FUNC2(prop));
		FUNC1();
	} else if (FUNC7(sym)) {
		sym2 = FUNC3(sym);
	} else {
		sym->flags |= (SYMBOL_CHECK | SYMBOL_CHECKED);
		sym2 = FUNC5(sym);
		sym->flags &= ~SYMBOL_CHECK;
	}

	return sym2;
}