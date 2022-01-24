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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int) ; 

__attribute__((used)) static char *FUNC3(const char *op, char *args, u64 *token)
{
	char *name;

	*token = FUNC2(args, &name, 16);
	if ((name == args) || *name != '^') {
		FUNC0("%s: Invalid input '%s'", op, args);
		return FUNC1(-EINVAL);
	}

	name++;			/* skip ^ */
	if (!*name)
		name = NULL;
	return name;
}