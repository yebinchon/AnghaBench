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
typedef  int /*<<< orphan*/  va_list ;
struct kobject {char const* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,char) ; 

int FUNC5(struct kobject *kobj, const char *fmt,
				  va_list vargs)
{
	const char *s;

	if (kobj->name && !fmt)
		return 0;

	s = FUNC2(GFP_KERNEL, fmt, vargs);
	if (!s)
		return -ENOMEM;

	/*
	 * ewww... some of these buggers have '/' in the name ... If
	 * that's the case, we need to make sure we have an actual
	 * allocated copy to modify, since kvasprintf_const may have
	 * returned something from .rodata.
	 */
	if (FUNC3(s, '/')) {
		char *t;

		t = FUNC1(s, GFP_KERNEL);
		FUNC0(s);
		if (!t)
			return -ENOMEM;
		FUNC4(t, '/', '!');
		s = t;
	}
	FUNC0(kobj->name);
	kobj->name = s;

	return 0;
}