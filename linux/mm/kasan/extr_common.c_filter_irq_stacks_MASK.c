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
 scalar_t__ FUNC0 (unsigned long) ; 

__attribute__((used)) static inline unsigned int FUNC1(unsigned long *entries,
					     unsigned int nr_entries)
{
	unsigned int i;

	for (i = 0; i < nr_entries; i++) {
		if (FUNC0(entries[i])) {
			/* Include the irqentry function into the stack. */
			return i + 1;
		}
	}
	return nr_entries;
}