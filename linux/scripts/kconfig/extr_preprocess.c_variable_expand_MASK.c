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
struct variable {int exp_count; scalar_t__ flavor; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ VAR_RECURSIVE ; 
 char* FUNC0 (int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct variable* FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(const char *name, int argc, char *argv[])
{
	struct variable *v;
	char *res;

	v = FUNC2(name);
	if (!v)
		return NULL;

	if (argc == 0 && v->exp_count)
		FUNC1("Recursive variable '%s' references itself (eventually)",
			name);

	if (v->exp_count > 1000)
		FUNC1("Too deep recursive expansion");

	v->exp_count++;

	if (v->flavor == VAR_RECURSIVE)
		res = FUNC0(v->value, argc, argv);
	else
		res = FUNC3(v->value);

	v->exp_count--;

	return res;
}