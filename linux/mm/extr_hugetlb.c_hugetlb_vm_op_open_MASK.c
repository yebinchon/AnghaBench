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
struct resv_map {int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_RESV_OWNER ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct resv_map* FUNC2 (struct vm_area_struct*) ; 

__attribute__((used)) static void FUNC3(struct vm_area_struct *vma)
{
	struct resv_map *resv = FUNC2(vma);

	/*
	 * This new VMA should share its siblings reservation map if present.
	 * The VMA will only ever have a valid reservation map pointer where
	 * it is being copied for another still existing VMA.  As that VMA
	 * has a reference to the reservation map it cannot disappear until
	 * after this open call completes.  It is therefore safe to take a
	 * new reference here without additional locking.
	 */
	if (resv && FUNC0(vma, HPAGE_RESV_OWNER))
		FUNC1(&resv->refs);
}