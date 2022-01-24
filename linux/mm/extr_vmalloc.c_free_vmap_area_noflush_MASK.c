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
struct vmap_area {int va_end; int va_start; int /*<<< orphan*/  purge_list; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 unsigned long FUNC0 (int,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct vmap_area*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_area_lock ; 
 int /*<<< orphan*/  vmap_area_root ; 
 int /*<<< orphan*/  vmap_lazy_nr ; 
 int /*<<< orphan*/  vmap_purge_list ; 

__attribute__((used)) static void FUNC8(struct vmap_area *va)
{
	unsigned long nr_lazy;

	FUNC3(&vmap_area_lock);
	FUNC7(va, &vmap_area_root);
	FUNC4(&vmap_area_lock);

	nr_lazy = FUNC0((va->va_end - va->va_start) >>
				PAGE_SHIFT, &vmap_lazy_nr);

	/* After this point, we may free va at any time */
	FUNC2(&va->purge_list, &vmap_purge_list);

	if (FUNC6(nr_lazy > FUNC1()))
		FUNC5();
}