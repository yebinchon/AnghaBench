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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int TS_IGNORECASE ; 
 scalar_t__ const FUNC0 (scalar_t__ const) ; 

__attribute__((used)) static inline void FUNC1(const u8 *pattern, unsigned int len,
				      unsigned int *prefix_tbl, int flags)
{
	unsigned int k, q;
	const u8 icase = flags & TS_IGNORECASE;

	for (k = 0, q = 1; q < len; q++) {
		while (k > 0 && (icase ? FUNC0(pattern[k]) : pattern[k])
		    != (icase ? FUNC0(pattern[q]) : pattern[q]))
			k = prefix_tbl[k-1];
		if ((icase ? FUNC0(pattern[k]) : pattern[k])
		    == (icase ? FUNC0(pattern[q]) : pattern[q]))
			k++;
		prefix_tbl[q] = k;
	}
}