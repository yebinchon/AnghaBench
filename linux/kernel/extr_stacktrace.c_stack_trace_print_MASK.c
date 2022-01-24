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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char,void*) ; 

void FUNC2(const unsigned long *entries, unsigned int nr_entries,
		       int spaces)
{
	unsigned int i;

	if (FUNC0(!entries))
		return;

	for (i = 0; i < nr_entries; i++)
		FUNC1("%*c%pS\n", 1 + spaces, ' ', (void *)entries[i]);
}