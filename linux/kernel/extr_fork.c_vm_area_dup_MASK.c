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
struct vm_area_struct {int /*<<< orphan*/  anon_vma_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_area_cachep ; 

struct vm_area_struct *FUNC2(struct vm_area_struct *orig)
{
	struct vm_area_struct *new = FUNC1(vm_area_cachep, GFP_KERNEL);

	if (new) {
		*new = *orig;
		FUNC0(&new->anon_vma_chain);
	}
	return new;
}