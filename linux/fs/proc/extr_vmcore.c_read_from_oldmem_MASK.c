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
typedef  unsigned long u64 ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (unsigned long,char*,size_t,unsigned long,int) ; 
 scalar_t__ FUNC1 (unsigned long,char*,size_t,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

ssize_t FUNC4(char *buf, size_t count,
			 u64 *ppos, int userbuf,
			 bool encrypted)
{
	unsigned long pfn, offset;
	size_t nr_bytes;
	ssize_t read = 0, tmp;

	if (!count)
		return 0;

	offset = (unsigned long)(*ppos % PAGE_SIZE);
	pfn = (unsigned long)(*ppos / PAGE_SIZE);

	do {
		if (count > (PAGE_SIZE - offset))
			nr_bytes = PAGE_SIZE - offset;
		else
			nr_bytes = count;

		/* If pfn is not ram, return zeros for sparse dump files */
		if (FUNC3(pfn) == 0)
			FUNC2(buf, 0, nr_bytes);
		else {
			if (encrypted)
				tmp = FUNC1(pfn, buf,
								 nr_bytes,
								 offset,
								 userbuf);
			else
				tmp = FUNC0(pfn, buf, nr_bytes,
						       offset, userbuf);

			if (tmp < 0)
				return tmp;
		}
		*ppos += nr_bytes;
		count -= nr_bytes;
		buf += nr_bytes;
		read += nr_bytes;
		++pfn;
		offset = 0;
	} while (count);

	return read;
}