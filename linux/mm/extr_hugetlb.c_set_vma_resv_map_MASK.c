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
struct vm_area_struct {int vm_flags; } ;
struct resv_map {int dummy; } ;

/* Variables and functions */
 unsigned long HPAGE_RESV_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,struct vm_area_struct*) ; 
 int VM_MAYSHARE ; 
 unsigned long FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct vm_area_struct *vma, struct resv_map *map)
{
	FUNC0(!FUNC2(vma), vma);
	FUNC0(vma->vm_flags & VM_MAYSHARE, vma);

	FUNC3(vma, (FUNC1(vma) &
				HPAGE_RESV_MASK) | (unsigned long)map);
}