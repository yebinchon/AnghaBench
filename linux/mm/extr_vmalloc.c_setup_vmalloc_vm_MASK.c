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
struct vmap_area {struct vm_struct* vm; scalar_t__ va_start; scalar_t__ va_end; } ;
struct vm_struct {unsigned long flags; void const* caller; scalar_t__ size; void* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_area_lock ; 

__attribute__((used)) static void FUNC2(struct vm_struct *vm, struct vmap_area *va,
			      unsigned long flags, const void *caller)
{
	FUNC0(&vmap_area_lock);
	vm->flags = flags;
	vm->addr = (void *)va->va_start;
	vm->size = va->va_end - va->va_start;
	vm->caller = caller;
	va->vm = vm;
	FUNC1(&vmap_area_lock);
}