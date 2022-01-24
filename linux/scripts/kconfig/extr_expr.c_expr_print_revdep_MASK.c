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
typedef  scalar_t__ tristate ;
struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {scalar_t__ type; TYPE_2__ right; TYPE_1__ left; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_NONE ; 
 scalar_t__ E_OR ; 
 scalar_t__ FUNC0 (struct expr*) ; 
 int /*<<< orphan*/  FUNC1 (struct expr*,void (*) (void*,struct symbol*,char const*),void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct expr *e,
			      void (*fn)(void *, struct symbol *, const char *),
			      void *data, tristate pr_type, const char **title)
{
	if (e->type == E_OR) {
		FUNC2(e->left.expr, fn, data, pr_type, title);
		FUNC2(e->right.expr, fn, data, pr_type, title);
	} else if (FUNC0(e) == pr_type) {
		if (*title) {
			fn(data, NULL, *title);
			*title = NULL;
		}

		fn(data, NULL, "  - ");
		FUNC1(e, fn, data, E_NONE);
		fn(data, NULL, "\n");
	}
}