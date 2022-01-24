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
struct vm_struct {scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ VM_DMA_COHERENT ; 
 int /*<<< orphan*/  FUNC1 (int,char*,void*) ; 
 struct vm_struct* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void FUNC5(void *cpu_addr, size_t size)
{
	struct vm_struct *area = FUNC2(cpu_addr);

	if (!area || area->flags != VM_DMA_COHERENT) {
		FUNC1(1, "trying to free invalid coherent area: %p\n", cpu_addr);
		return;
	}

	FUNC3((unsigned long)cpu_addr, FUNC0(size));
	FUNC4(cpu_addr);
}