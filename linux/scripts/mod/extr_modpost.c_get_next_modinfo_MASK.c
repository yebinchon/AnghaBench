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
struct elf_info {char* modinfo; unsigned long modinfo_len; } ;

/* Variables and functions */
 char* FUNC0 (char*,unsigned long*) ; 
 unsigned int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,unsigned int) ; 

__attribute__((used)) static char *FUNC3(struct elf_info *info, const char *tag,
			      char *prev)
{
	char *p;
	unsigned int taglen = FUNC1(tag);
	char *modinfo = info->modinfo;
	unsigned long size = info->modinfo_len;

	if (prev) {
		size -= prev - modinfo;
		modinfo = FUNC0(prev, &size);
	}

	for (p = modinfo; p; p = FUNC0(p, &size)) {
		if (FUNC2(p, tag, taglen) == 0 && p[taglen] == '=')
			return p + taglen + 1;
	}
	return NULL;
}