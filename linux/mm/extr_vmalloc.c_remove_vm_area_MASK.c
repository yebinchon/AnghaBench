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
struct vmap_area {struct vm_struct* vm; } ;
struct vm_struct {int dummy; } ;

/* Variables and functions */
 struct vmap_area* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vmap_area*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_area_lock ; 

struct vm_struct *FUNC6(const void *addr)
{
	struct vmap_area *va;

	FUNC3();

	FUNC4(&vmap_area_lock);
	va = FUNC0((unsigned long)addr);
	if (va && va->vm) {
		struct vm_struct *vm = va->vm;

		va->vm = NULL;
		FUNC5(&vmap_area_lock);

		FUNC2(vm);
		FUNC1(va);

		return vm;
	}

	FUNC5(&vmap_area_lock);
	return NULL;
}