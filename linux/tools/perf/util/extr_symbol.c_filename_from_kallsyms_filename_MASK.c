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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static bool FUNC3(char *filename,
					    const char *base_name,
					    const char *kallsyms_filename)
{
	char *name;

	FUNC1(filename, kallsyms_filename);
	name = FUNC2(filename, '/');
	if (!name)
		return false;

	name += 1;

	if (!FUNC0(name, "kallsyms")) {
		FUNC1(name, base_name);
		return true;
	}

	return false;
}