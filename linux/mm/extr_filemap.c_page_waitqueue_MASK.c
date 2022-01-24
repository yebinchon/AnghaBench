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
 int /*<<< orphan*/  PAGE_WAIT_TABLE_BITS ; 
 size_t FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * page_wait_table ; 

__attribute__((used)) static wait_queue_head_t *FUNC1(struct page *page)
{
	return &page_wait_table[FUNC0(page, PAGE_WAIT_TABLE_BITS)];
}