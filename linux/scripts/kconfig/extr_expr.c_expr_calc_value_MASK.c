#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union string_value {scalar_t__ u; scalar_t__ s; } ;
typedef  int /*<<< orphan*/  tristate ;
struct TYPE_8__ {TYPE_4__* sym; struct expr* expr; } ;
struct TYPE_7__ {TYPE_4__* sym; struct expr* expr; } ;
struct expr {int type; TYPE_3__ right; TYPE_2__ left; } ;
typedef  enum string_value_kind { ____Placeholder_string_value_kind } string_value_kind ;
struct TYPE_6__ {int /*<<< orphan*/  tri; } ;
struct TYPE_9__ {int /*<<< orphan*/  type; TYPE_1__ curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  E_AND 137 
#define  E_EQUAL 136 
#define  E_GEQ 135 
#define  E_GTH 134 
#define  E_LEQ 133 
#define  E_LTH 132 
#define  E_NOT 131 
#define  E_OR 130 
#define  E_SYMBOL 129 
#define  E_UNEQUAL 128 
 int /*<<< orphan*/  S_STRING ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,union string_value*) ; 
 int k_string ; 
 int k_unsigned ; 
 int /*<<< orphan*/  no ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 char* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  yes ; 

tristate FUNC8(struct expr *e)
{
	tristate val1, val2;
	const char *str1, *str2;
	enum string_value_kind k1 = k_string, k2 = k_string;
	union string_value lval = {}, rval = {};
	int res;

	if (!e)
		return yes;

	switch (e->type) {
	case E_SYMBOL:
		FUNC6(e->left.sym);
		return e->left.sym->curr.tri;
	case E_AND:
		val1 = FUNC8(e->left.expr);
		val2 = FUNC8(e->right.expr);
		return FUNC0(val1, val2);
	case E_OR:
		val1 = FUNC8(e->left.expr);
		val2 = FUNC8(e->right.expr);
		return FUNC2(val1, val2);
	case E_NOT:
		val1 = FUNC8(e->left.expr);
		return FUNC1(val1);
	case E_EQUAL:
	case E_GEQ:
	case E_GTH:
	case E_LEQ:
	case E_LTH:
	case E_UNEQUAL:
		break;
	default:
		FUNC4("expr_calc_value: %d?\n", e->type);
		return no;
	}

	FUNC6(e->left.sym);
	FUNC6(e->right.sym);
	str1 = FUNC7(e->left.sym);
	str2 = FUNC7(e->right.sym);

	if (e->left.sym->type != S_STRING || e->right.sym->type != S_STRING) {
		k1 = FUNC3(str1, e->left.sym->type, &lval);
		k2 = FUNC3(str2, e->right.sym->type, &rval);
	}

	if (k1 == k_string || k2 == k_string)
		res = FUNC5(str1, str2);
	else if (k1 == k_unsigned || k2 == k_unsigned)
		res = (lval.u > rval.u) - (lval.u < rval.u);
	else /* if (k1 == k_signed && k2 == k_signed) */
		res = (lval.s > rval.s) - (lval.s < rval.s);

	switch(e->type) {
	case E_EQUAL:
		return res ? no : yes;
	case E_GEQ:
		return res >= 0 ? yes : no;
	case E_GTH:
		return res > 0 ? yes : no;
	case E_LEQ:
		return res <= 0 ? yes : no;
	case E_LTH:
		return res < 0 ? yes : no;
	case E_UNEQUAL:
		return res ? yes : no;
	default:
		FUNC4("expr_calc_value: relation %d?\n", e->type);
		return no;
	}
}