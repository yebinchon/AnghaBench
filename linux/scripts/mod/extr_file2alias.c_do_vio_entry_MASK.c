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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** compat ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 char** type ; 
 int /*<<< orphan*/  vio_device_id ; 

__attribute__((used)) static int FUNC4(const char *filename, void *symval,
		char *alias)
{
	char *tmp;
	FUNC0(symval, vio_device_id, type);
	FUNC0(symval, vio_device_id, compat);

	FUNC3(alias, "vio:T%sS%s", (*type)[0] ? *type : "*",
			(*compat)[0] ? *compat : "*");

	/* Replace all whitespace with underscores */
	for (tmp = alias; tmp && *tmp; tmp++)
		if (FUNC2 (*tmp))
			*tmp = '_';

	FUNC1(alias);
	return 1;
}