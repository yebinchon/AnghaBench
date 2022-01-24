#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; TYPE_1__* vm_file; } ;
struct resv_map {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int HPAGE_RESV_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,struct vm_area_struct*) ; 
 int VM_MAYSHARE ; 
 int FUNC1 (struct vm_area_struct*) ; 
 struct resv_map* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 

__attribute__((used)) static struct resv_map *FUNC4(struct vm_area_struct *vma)
{
	FUNC0(!FUNC3(vma), vma);
	if (vma->vm_flags & VM_MAYSHARE) {
		struct address_space *mapping = vma->vm_file->f_mapping;
		struct inode *inode = mapping->host;

		return FUNC2(inode);

	} else {
		return (struct resv_map *)(FUNC1(vma) &
							~HPAGE_RESV_MASK);
	}
}