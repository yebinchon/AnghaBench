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
struct printf_spec {int base; int field_width; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  ptr ;

/* Variables and functions */
 int /*<<< orphan*/  SMALL ; 
 int /*<<< orphan*/  ZEROPAD ; 
 char* FUNC0 (char*,char*,unsigned long,struct printf_spec) ; 

__attribute__((used)) static char *FUNC1(char *buf, char *end,
			    const void *ptr,
			    struct printf_spec spec)
{
	spec.base = 16;
	spec.flags |= SMALL;
	if (spec.field_width == -1) {
		spec.field_width = 2 * sizeof(ptr);
		spec.flags |= ZEROPAD;
	}

	return FUNC0(buf, end, (unsigned long int)ptr, spec);
}