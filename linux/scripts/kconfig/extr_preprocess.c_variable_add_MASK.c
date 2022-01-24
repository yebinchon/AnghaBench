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
struct variable {int flavor; char* value; int /*<<< orphan*/  node; scalar_t__ exp_count; void* name; } ;
typedef  enum variable_flavor { ____Placeholder_variable_flavor } variable_flavor ;

/* Variables and functions */
 int VAR_APPEND ; 
 int VAR_RECURSIVE ; 
 int VAR_SIMPLE ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  variable_list ; 
 struct variable* FUNC5 (char const*) ; 
 struct variable* FUNC6 (int) ; 
 char* FUNC7 (char*,scalar_t__) ; 
 void* FUNC8 (char const*) ; 

void FUNC9(const char *name, const char *value,
		  enum variable_flavor flavor)
{
	struct variable *v;
	char *new_value;
	bool append = false;

	v = FUNC5(name);
	if (v) {
		/* For defined variables, += inherits the existing flavor */
		if (flavor == VAR_APPEND) {
			flavor = v->flavor;
			append = true;
		} else {
			FUNC1(v->value);
		}
	} else {
		/* For undefined variables, += assumes the recursive flavor */
		if (flavor == VAR_APPEND)
			flavor = VAR_RECURSIVE;

		v = FUNC6(sizeof(*v));
		v->name = FUNC8(name);
		v->exp_count = 0;
		FUNC2(&v->node, &variable_list);
	}

	v->flavor = flavor;

	if (flavor == VAR_SIMPLE)
		new_value = FUNC0(value);
	else
		new_value = FUNC8(value);

	if (append) {
		v->value = FUNC7(v->value,
				    FUNC4(v->value) + FUNC4(new_value) + 2);
		FUNC3(v->value, " ");
		FUNC3(v->value, new_value);
		FUNC1(new_value);
	} else {
		v->value = new_value;
	}
}