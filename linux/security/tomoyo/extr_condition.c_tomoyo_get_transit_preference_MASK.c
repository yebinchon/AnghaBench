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
struct tomoyo_condition {scalar_t__ transit; } ;
struct tomoyo_acl_param {char* data; } ;

/* Variables and functions */
 char* FUNC0 (char* const,char) ; 
 int /*<<< orphan*/  FUNC1 (char* const,char*) ; 
 scalar_t__ FUNC2 (char* const) ; 
 scalar_t__ FUNC3 (struct tomoyo_acl_param*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tomoyo_acl_param*) ; 

__attribute__((used)) static char *FUNC6(struct tomoyo_acl_param *param,
					   struct tomoyo_condition *e)
{
	char * const pos = param->data;
	bool flag;

	if (*pos == '<') {
		e->transit = FUNC3(param);
		goto done;
	}
	{
		char *cp = FUNC0(pos, ' ');

		if (cp)
			*cp = '\0';
		flag = FUNC2(pos) || !FUNC1(pos, "keep") ||
			!FUNC1(pos, "initialize") || !FUNC1(pos, "reset") ||
			!FUNC1(pos, "child") || !FUNC1(pos, "parent");
		if (cp)
			*cp = ' ';
	}
	if (!flag)
		return pos;
	e->transit = FUNC4(FUNC5(param));
done:
	if (e->transit)
		return param->data;
	/*
	 * Return a bad read-only condition string that will let
	 * tomoyo_get_condition() return NULL.
	 */
	return "/";
}