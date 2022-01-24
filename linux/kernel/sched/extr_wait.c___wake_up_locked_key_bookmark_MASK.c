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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct wait_queue_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wait_queue_head*,unsigned int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

void FUNC1(struct wait_queue_head *wq_head,
		unsigned int mode, void *key, wait_queue_entry_t *bookmark)
{
	FUNC0(wq_head, mode, 1, 0, key, bookmark);
}