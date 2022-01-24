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
 int ENOMEM ; 
 int /*<<< orphan*/  REG_OP_ALLOC ; 
 int /*<<< orphan*/  REG_OP_ISFREE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned int,int,int /*<<< orphan*/ ) ; 

int FUNC1(unsigned long *bitmap, unsigned int bits, int order)
{
	unsigned int pos, end;		/* scans bitmap by regions of size order */

	for (pos = 0 ; (end = pos + (1U << order)) <= bits; pos = end) {
		if (!FUNC0(bitmap, pos, order, REG_OP_ISFREE))
			continue;
		FUNC0(bitmap, pos, order, REG_OP_ALLOC);
		return pos;
	}
	return -ENOMEM;
}