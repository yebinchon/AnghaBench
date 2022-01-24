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
struct tomoyo_io_buffer {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ TOMOYO_QUERY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tomoyo_answer_wait ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_io_buffer*,int) ; 
 int /*<<< orphan*/  tomoyo_query_observers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct tomoyo_io_buffer *head)
{
	/*
	 * If the file is /sys/kernel/security/tomoyo/query , decrement the
	 * observer counter.
	 */
	if (head->type == TOMOYO_QUERY &&
	    FUNC0(&tomoyo_query_observers))
		FUNC2(&tomoyo_answer_wait);
	FUNC1(head, false);
}