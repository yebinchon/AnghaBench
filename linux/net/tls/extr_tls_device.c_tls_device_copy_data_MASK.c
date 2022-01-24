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
struct iov_iter {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int SMP_CACHE_BYTES ; 
 size_t FUNC0 (void*,size_t,struct iov_iter*) ; 
 size_t FUNC1 (void*,size_t,struct iov_iter*) ; 
 size_t FUNC2 (size_t,size_t) ; 
 size_t FUNC3 (size_t,int) ; 

__attribute__((used)) static int FUNC4(void *addr, size_t bytes, struct iov_iter *i)
{
	size_t pre_copy, nocache;

	pre_copy = ~((unsigned long)addr - 1) & (SMP_CACHE_BYTES - 1);
	if (pre_copy) {
		pre_copy = FUNC2(pre_copy, bytes);
		if (FUNC0(addr, pre_copy, i) != pre_copy)
			return -EFAULT;
		bytes -= pre_copy;
		addr += pre_copy;
	}

	nocache = FUNC3(bytes, SMP_CACHE_BYTES);
	if (FUNC1(addr, nocache, i) != nocache)
		return -EFAULT;
	bytes -= nocache;
	addr += nocache;

	if (bytes && FUNC0(addr, bytes, i) != bytes)
		return -EFAULT;

	return 0;
}