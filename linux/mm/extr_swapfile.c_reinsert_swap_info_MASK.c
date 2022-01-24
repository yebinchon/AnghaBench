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
struct swap_info_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  cluster_info; int /*<<< orphan*/  swap_map; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swap_info_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_lock ; 

__attribute__((used)) static void FUNC4(struct swap_info_struct *p)
{
	FUNC2(&swap_lock);
	FUNC2(&p->lock);
	FUNC1(p, p->prio, p->swap_map, p->cluster_info);
	FUNC0(p);
	FUNC3(&p->lock);
	FUNC3(&swap_lock);
}