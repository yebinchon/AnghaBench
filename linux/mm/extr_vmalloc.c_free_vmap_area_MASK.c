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
struct vmap_area {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmap_area*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_area_lock ; 

__attribute__((used)) static void FUNC3(struct vmap_area *va)
{
	FUNC1(&vmap_area_lock);
	FUNC0(va);
	FUNC2(&vmap_area_lock);
}