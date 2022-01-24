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
typedef  int u64 ;
typedef  scalar_t__ ssize_t ;
typedef  int loff_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ errno ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int page_size ; 
 scalar_t__ FUNC2 (int,void*,int,int) ; 

int FUNC3(int ifd, loff_t off_in, int ofd, loff_t off_out, u64 size)
{
	void *ptr;
	loff_t pgoff;

	pgoff = off_in & ~(page_size - 1);
	off_in -= pgoff;

	ptr = FUNC0(NULL, off_in + size, PROT_READ, MAP_PRIVATE, ifd, pgoff);
	if (ptr == MAP_FAILED)
		return -1;

	while (size) {
		ssize_t ret = FUNC2(ofd, ptr + off_in, size, off_out);
		if (ret < 0 && errno == EINTR)
			continue;
		if (ret <= 0)
			break;

		size -= ret;
		off_in += ret;
		off_out += ret;
	}
	FUNC1(ptr, off_in + size);

	return size ? -1 : 0;
}