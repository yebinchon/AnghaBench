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
struct vm_area_struct {int dummy; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 struct hstate* FUNC0 (struct vm_area_struct*) ; 
 unsigned long FUNC1 (struct hstate*) ; 

__attribute__((used)) static unsigned long FUNC2(struct vm_area_struct *vma)
{
	struct hstate *hstate = FUNC0(vma);

	return 1UL << FUNC1(hstate);
}