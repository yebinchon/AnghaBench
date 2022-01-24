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
struct symbol {int /*<<< orphan*/ * namespace; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *symname, const char *namespace)
{
	struct symbol *s = FUNC1(symname);

	/*
	 * That symbol should have been created earlier and thus this is
	 * actually an assertion.
	 */
	if (!s) {
		FUNC3("Could not update namespace(%s) for symbol %s\n",
		       namespace, symname);
		return;
	}

	FUNC2(s->namespace);
	s->namespace =
		namespace && namespace[0] ? FUNC0(FUNC4(namespace)) : NULL;
}