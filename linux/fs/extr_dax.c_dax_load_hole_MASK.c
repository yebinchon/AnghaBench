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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct xa_state {int dummy; } ;
struct vm_fault {unsigned long address; int /*<<< orphan*/  vma; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DAX_ZERO_PAGE ; 
 void* FUNC0 (struct xa_state*,struct address_space*,struct vm_fault*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct vm_fault*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC5(struct xa_state *xas,
		struct address_space *mapping, void **entry,
		struct vm_fault *vmf)
{
	struct inode *inode = mapping->host;
	unsigned long vaddr = vmf->address;
	pfn_t pfn = FUNC2(FUNC1(vaddr));
	vm_fault_t ret;

	*entry = FUNC0(xas, mapping, vmf, *entry, pfn,
			DAX_ZERO_PAGE, false);

	ret = FUNC4(vmf->vma, vaddr, pfn);
	FUNC3(inode, vmf, ret);
	return ret;
}