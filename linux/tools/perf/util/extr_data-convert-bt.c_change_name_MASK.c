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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4(char *name, char *orig_name, int dup)
{
	char *new_name = NULL;
	size_t len;

	if (!name)
		name = orig_name;

	if (dup >= 10)
		goto out;
	/*
	 * Add '_' prefix to potential keywork.  According to
	 * Mathieu Desnoyers (https://lkml.org/lkml/2015/1/23/652),
	 * futher CTF spec updating may require us to use '$'.
	 */
	if (dup < 0)
		len = FUNC3(name) + sizeof("_");
	else
		len = FUNC3(orig_name) + sizeof("_dupl_X");

	new_name = FUNC1(len);
	if (!new_name)
		goto out;

	if (dup < 0)
		FUNC2(new_name, len, "_%s", name);
	else
		FUNC2(new_name, len, "%s_dupl_%d", orig_name, dup);

out:
	if (name != orig_name)
		FUNC0(name);
	return new_name;
}