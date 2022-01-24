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
typedef  int /*<<< orphan*/  u32 ;
struct page_pool {int /*<<< orphan*/  pages_state_hold_cnt; int /*<<< orphan*/  pages_state_release_cnt; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC4(struct page_pool *pool)
{
	u32 release_cnt = FUNC2(&pool->pages_state_release_cnt);
	u32 hold_cnt = FUNC0(pool->pages_state_hold_cnt);
	s32 distance;

	distance = FUNC1(hold_cnt, release_cnt);

	FUNC3(pool, distance, hold_cnt, release_cnt);
	return distance;
}