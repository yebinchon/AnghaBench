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
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ ptrace; } ;

/* Variables and functions */
 unsigned long MAP_PRIVATE ; 
 unsigned long MAP_SHARED ; 
 unsigned long NOMMU_MAP_DIRECT ; 
 unsigned long NOMMU_VMFLAGS ; 
 unsigned long PROT_WRITE ; 
 unsigned long VM_MAYEXEC ; 
 unsigned long VM_MAYREAD ; 
 unsigned long VM_MAYSHARE ; 
 unsigned long VM_MAYWRITE ; 
 unsigned long VM_SHARED ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 

__attribute__((used)) static unsigned long FUNC2(struct file *file,
					unsigned long prot,
					unsigned long flags,
					unsigned long capabilities)
{
	unsigned long vm_flags;

	vm_flags = FUNC1(prot, 0) | FUNC0(flags);
	/* vm_flags |= mm->def_flags; */

	if (!(capabilities & NOMMU_MAP_DIRECT)) {
		/* attempt to share read-only copies of mapped file chunks */
		vm_flags |= VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC;
		if (file && !(prot & PROT_WRITE))
			vm_flags |= VM_MAYSHARE;
	} else {
		/* overlay a shareable mapping on the backing device or inode
		 * if possible - used for chardevs, ramfs/tmpfs/shmfs and
		 * romfs/cramfs */
		vm_flags |= VM_MAYSHARE | (capabilities & NOMMU_VMFLAGS);
		if (flags & MAP_SHARED)
			vm_flags |= VM_SHARED;
	}

	/* refuse to let anyone share private mappings with this process if
	 * it's being traced - otherwise breakpoints set in it may interfere
	 * with another untraced process
	 */
	if ((flags & MAP_PRIVATE) && current->ptrace)
		vm_flags &= ~VM_MAYSHARE;

	return vm_flags;
}