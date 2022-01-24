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
typedef  int u32 ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char const* const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 

void FUNC3(struct audit_buffer *ab, u32 mask, const char *chrs,
			u32 chrsmask, const char * const *names, u32 namesmask)
{
	char str[33];

	FUNC2(ab, "\"");
	if ((mask & chrsmask) && chrs) {
		FUNC1(str, sizeof(str), chrs, mask & chrsmask);
		mask &= ~chrsmask;
		FUNC2(ab, "%s", str);
		if (mask & namesmask)
			FUNC2(ab, " ");
	}
	if ((mask & namesmask) && names)
		FUNC0(ab, names, mask & namesmask);
	FUNC2(ab, "\"");
}