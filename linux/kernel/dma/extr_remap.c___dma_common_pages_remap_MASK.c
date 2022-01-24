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
struct vm_struct {int /*<<< orphan*/  addr; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_DMA_COHERENT ; 
 struct vm_struct* FUNC0 (size_t,int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC1 (struct vm_struct*,int /*<<< orphan*/ ,struct page**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vm_struct *FUNC3(struct page **pages,
			size_t size, pgprot_t prot, const void *caller)
{
	struct vm_struct *area;

	area = FUNC0(size, VM_DMA_COHERENT, caller);
	if (!area)
		return NULL;

	if (FUNC1(area, prot, pages)) {
		FUNC2(area->addr);
		return NULL;
	}

	return area;
}