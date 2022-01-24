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
struct page {int dummy; } ;
struct kimage {scalar_t__ type; void* vmcoreinfo_data_copy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ KEXEC_TYPE_CRASH ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  VM_MAP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct page* FUNC1 (struct kimage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (struct page**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct kimage *image)
{
	struct page *vmcoreinfo_page;
	void *safecopy;

	if (image->type != KEXEC_TYPE_CRASH)
		return 0;

	/*
	 * For kdump, allocate one vmcoreinfo safe copy from the
	 * crash memory. as we have arch_kexec_protect_crashkres()
	 * after kexec syscall, we naturally protect it from write
	 * (even read) access under kernel direct mapping. But on
	 * the other hand, we still need to operate it when crash
	 * happens to generate vmcoreinfo note, hereby we rely on
	 * vmap for this purpose.
	 */
	vmcoreinfo_page = FUNC1(image, 0);
	if (!vmcoreinfo_page) {
		FUNC2("Could not allocate vmcoreinfo buffer\n");
		return -ENOMEM;
	}
	safecopy = FUNC3(&vmcoreinfo_page, 1, VM_MAP, PAGE_KERNEL);
	if (!safecopy) {
		FUNC2("Could not vmap vmcoreinfo buffer\n");
		return -ENOMEM;
	}

	image->vmcoreinfo_data_copy = safecopy;
	FUNC0(safecopy);

	return 0;
}