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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (char const*) ; 

void FUNC2(char *str, size_t str_size, const char *chrs, u32 mask)
{
	unsigned int i, perm = 1;
	size_t num_chrs = FUNC1(chrs);

	for (i = 0; i < num_chrs; perm <<= 1, i++) {
		if (mask & perm) {
			/* Ensure that one byte is left for NUL-termination */
			if (FUNC0(str_size <= 1))
				break;

			*str++ = chrs[i];
			str_size--;
		}
	}
	*str = '\0';
}