#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct TYPE_3__ {struct vm_area_struct** vmas; } ;
struct TYPE_4__ {TYPE_1__ vmacache; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned long) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(unsigned long addr, struct vm_area_struct *newvma)
{
	if (FUNC1(newvma->vm_mm))
		current->vmacache.vmas[FUNC0(addr)] = newvma;
}