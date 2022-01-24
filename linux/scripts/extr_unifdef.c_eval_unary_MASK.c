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
struct ops {int dummy; } ;
typedef  scalar_t__ Linetype ;

/* Variables and functions */
 scalar_t__ LT_ERROR ; 
 scalar_t__ LT_FALSE ; 
 scalar_t__ LT_IF ; 
 scalar_t__ LT_TRUE ; 
 int constexpr ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ops const*,...) ; 
 scalar_t__ FUNC1 (char const) ; 
 int eval_ops ; 
 scalar_t__ FUNC2 (int,int*,char const**) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int FUNC9 (char const*,char**,int /*<<< orphan*/ ) ; 
 char** value ; 

__attribute__((used)) static Linetype
FUNC10(const struct ops *ops, int *valp, const char **cpp)
{
	const char *cp;
	char *ep;
	int sym;
	bool defparen;
	Linetype lt;

	cp = FUNC6(*cpp);
	if (*cp == '!') {
		FUNC0("eval%d !", ops - eval_ops);
		cp++;
		lt = FUNC10(ops, valp, &cp);
		if (lt == LT_ERROR)
			return (LT_ERROR);
		if (lt != LT_IF) {
			*valp = !*valp;
			lt = *valp ? LT_TRUE : LT_FALSE;
		}
	} else if (*cp == '(') {
		cp++;
		FUNC0("eval%d (", ops - eval_ops);
		lt = FUNC2(eval_ops, valp, &cp);
		if (lt == LT_ERROR)
			return (LT_ERROR);
		cp = FUNC6(cp);
		if (*cp++ != ')')
			return (LT_ERROR);
	} else if (FUNC4((unsigned char)*cp)) {
		FUNC0("eval%d number", ops - eval_ops);
		*valp = FUNC9(cp, &ep, 0);
		if (ep == cp)
			return (LT_ERROR);
		lt = *valp ? LT_TRUE : LT_FALSE;
		cp = FUNC7(cp);
	} else if (FUNC8(cp, "defined", 7) == 0 && FUNC1(cp[7])) {
		cp = FUNC6(cp+7);
		FUNC0("eval%d defined", ops - eval_ops);
		if (*cp == '(') {
			cp = FUNC6(cp+1);
			defparen = true;
		} else {
			defparen = false;
		}
		sym = FUNC3(cp);
		if (sym < 0) {
			lt = LT_IF;
		} else {
			*valp = (value[sym] != NULL);
			lt = *valp ? LT_TRUE : LT_FALSE;
		}
		cp = FUNC7(cp);
		cp = FUNC6(cp);
		if (defparen && *cp++ != ')')
			return (LT_ERROR);
		constexpr = false;
	} else if (!FUNC1(*cp)) {
		FUNC0("eval%d symbol", ops - eval_ops);
		sym = FUNC3(cp);
		cp = FUNC7(cp);
		if (sym < 0) {
			lt = LT_IF;
			cp = FUNC5(cp);
		} else if (value[sym] == NULL) {
			*valp = 0;
			lt = LT_FALSE;
		} else {
			*valp = FUNC9(value[sym], &ep, 0);
			if (*ep != '\0' || ep == value[sym])
				return (LT_ERROR);
			lt = *valp ? LT_TRUE : LT_FALSE;
			cp = FUNC5(cp);
		}
		constexpr = false;
	} else {
		FUNC0("eval%d bad expr", ops - eval_ops);
		return (LT_ERROR);
	}

	*cpp = cp;
	FUNC0("eval%d = %d", ops - eval_ops, *valp);
	return (lt);
}