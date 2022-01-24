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
 char* FUNC0 (unsigned long,unsigned long*,unsigned long*,char**,char*) ; 
 int FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char *buffer, unsigned long address,
			   int symbol_offset, int add_offset)
{
	char *modname;
	const char *name;
	unsigned long offset, size;
	int len;

	address += symbol_offset;
	name = FUNC0(address, &size, &offset, &modname, buffer);
	if (!name)
		return FUNC1(buffer, "0x%lx", address - symbol_offset);

	if (name != buffer)
		FUNC2(buffer, name);
	len = FUNC3(buffer);
	offset -= symbol_offset;

	if (add_offset)
		len += FUNC1(buffer + len, "+%#lx/%#lx", offset, size);

	if (modname)
		len += FUNC1(buffer + len, " [%s]", modname);

	return len;
}