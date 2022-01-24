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
struct vm_area_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ,int,int) ; 
 unsigned long FUNC1 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*) ; 

unsigned long FUNC3(struct vm_area_struct *vma, unsigned long start,
		       unsigned long end, pgprot_t newprot,
		       int dirty_accountable, int prot_numa)
{
	unsigned long pages;

	if (FUNC2(vma))
		pages = FUNC1(vma, start, end, newprot);
	else
		pages = FUNC0(vma, start, end, newprot, dirty_accountable, prot_numa);

	return pages;
}