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
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static const char *FUNC2(char *type)
{
	const char *fmt = "%llu";

	if (FUNC0(type, "s64") == 0)
		fmt = "%lld";
	else if (FUNC0(type, "u64") == 0)
		fmt = "%llu";
	else if (FUNC0(type, "s32") == 0)
		fmt = "%d";
	else if (FUNC0(type, "u32") == 0)
		fmt = "%u";
	else if (FUNC0(type, "s16") == 0)
		fmt = "%d";
	else if (FUNC0(type, "u16") == 0)
		fmt = "%u";
	else if (FUNC0(type, "s8") == 0)
		fmt = "%d";
	else if (FUNC0(type, "u8") == 0)
		fmt = "%u";
	else if (FUNC0(type, "char") == 0)
		fmt = "%d";
	else if (FUNC0(type, "unsigned char") == 0)
		fmt = "%u";
	else if (FUNC0(type, "int") == 0)
		fmt = "%d";
	else if (FUNC0(type, "unsigned int") == 0)
		fmt = "%u";
	else if (FUNC0(type, "long") == 0)
		fmt = "%ld";
	else if (FUNC0(type, "unsigned long") == 0)
		fmt = "%lu";
	else if (FUNC0(type, "pid_t") == 0)
		fmt = "%d";
	else if (FUNC0(type, "gfp_t") == 0)
		fmt = "%x";
	else if (FUNC1(type))
		fmt = "%s";

	return fmt;
}