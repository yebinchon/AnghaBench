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
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned char*) ; 

__attribute__((used)) static int FUNC3(unsigned char *bitmap,
					    unsigned long target,
					    unsigned int bsize,
					    spinlock_t *lock)
{
	int pos, end = bsize;

	if (FUNC0(target < bsize)) {
		pos = target;
		do {
			pos = FUNC1(bitmap, end, pos);
			if (pos >= end)
				break;
			if (!FUNC2(lock, pos, bitmap))
				return pos;
		} while (++pos < end);

		end = target;
	}

	/* wrap around */
	for (pos = 0; pos < end; pos++) {
		pos = FUNC1(bitmap, end, pos);
		if (pos >= end)
			break;
		if (!FUNC2(lock, pos, bitmap))
			return pos;
	}

	return -ENOSPC;
}