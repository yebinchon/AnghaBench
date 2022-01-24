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
struct anon_vma {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct anon_vma *anon_vma1,
					struct anon_vma *anon_vma2,
					struct vm_area_struct *vma)
{
	/*
	 * The list_is_singular() test is to avoid merging VMA cloned from
	 * parents. This can improve scalability caused by anon_vma lock.
	 */
	if ((!anon_vma1 || !anon_vma2) && (!vma ||
		FUNC0(&vma->anon_vma_chain)))
		return 1;
	return anon_vma1 == anon_vma2;
}