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
struct anon_vma_chain {int /*<<< orphan*/  same_vma; struct anon_vma* anon_vma; struct vm_area_struct* vma; } ;
struct anon_vma {int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct anon_vma_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vm_area_struct *vma,
				struct anon_vma_chain *avc,
				struct anon_vma *anon_vma)
{
	avc->vma = vma;
	avc->anon_vma = anon_vma;
	FUNC1(&avc->same_vma, &vma->anon_vma_chain);
	FUNC0(avc, &anon_vma->rb_root);
}