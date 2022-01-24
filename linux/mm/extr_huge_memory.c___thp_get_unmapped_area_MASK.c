#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
typedef  unsigned long loff_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long (* get_unmapped_area ) (struct file*,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 TYPE_2__* current ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (struct file*,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC3(struct file *filp, unsigned long len,
		loff_t off, unsigned long flags, unsigned long size)
{
	unsigned long addr;
	loff_t off_end = off + len;
	loff_t off_align = FUNC1(off, size);
	unsigned long len_pad;

	if (off_end <= off_align || (off_end - off_align) < size)
		return 0;

	len_pad = len + size;
	if (len_pad < len || (off + len_pad) < off)
		return 0;

	addr = current->mm->get_unmapped_area(filp, 0, len_pad,
					      off >> PAGE_SHIFT, flags);
	if (FUNC0(addr))
		return 0;

	addr += (off - addr) & (size - 1);
	return addr;
}