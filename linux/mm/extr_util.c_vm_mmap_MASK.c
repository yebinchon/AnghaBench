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
struct file {int dummy; } ;

/* Variables and functions */
 unsigned long EINVAL ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned long FUNC3 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

unsigned long FUNC4(struct file *file, unsigned long addr,
	unsigned long len, unsigned long prot,
	unsigned long flag, unsigned long offset)
{
	if (FUNC2(offset + FUNC0(len) < offset))
		return -EINVAL;
	if (FUNC2(FUNC1(offset)))
		return -EINVAL;

	return FUNC3(file, addr, len, prot, flag, offset >> PAGE_SHIFT);
}