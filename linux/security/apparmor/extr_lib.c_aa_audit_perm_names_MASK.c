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
typedef  unsigned int u32 ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char const*,char const* const) ; 

void FUNC1(struct audit_buffer *ab, const char * const *names,
			 u32 mask)
{
	const char *fmt = "%s";
	unsigned int i, perm = 1;
	bool prev = false;

	for (i = 0; i < 32; perm <<= 1, i++) {
		if (mask & perm) {
			FUNC0(ab, fmt, names[i]);
			if (!prev) {
				prev = true;
				fmt = " %s";
			}
		}
	}
}