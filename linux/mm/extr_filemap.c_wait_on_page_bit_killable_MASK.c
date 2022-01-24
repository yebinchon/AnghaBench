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
 int /*<<< orphan*/  SHARED ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/ * FUNC0 (struct page*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct page*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct page *page, int bit_nr)
{
	wait_queue_head_t *q = FUNC0(page);
	return FUNC1(q, page, bit_nr, TASK_KILLABLE, SHARED);
}