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
struct vm_struct {scalar_t__ addr; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct vm_struct*) ; 
 int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,struct page**) ; 

int FUNC2(struct vm_struct *area, pgprot_t prot, struct page **pages)
{
	unsigned long addr = (unsigned long)area->addr;
	unsigned long end = addr + FUNC0(area);
	int err;

	err = FUNC1(addr, end, prot, pages);

	return err > 0 ? 0 : err;
}