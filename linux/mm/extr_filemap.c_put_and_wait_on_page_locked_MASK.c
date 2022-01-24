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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DROP ; 
 int /*<<< orphan*/  PG_locked ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct page* FUNC0 (struct page*) ; 
 int /*<<< orphan*/ * FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct page *page)
{
	wait_queue_head_t *q;

	page = FUNC0(page);
	q = FUNC1(page);
	FUNC2(q, page, PG_locked, TASK_UNINTERRUPTIBLE, DROP);
}