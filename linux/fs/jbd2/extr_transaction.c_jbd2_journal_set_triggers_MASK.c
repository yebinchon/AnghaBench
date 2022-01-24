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
struct journal_head {struct jbd2_buffer_trigger_type* b_triggers; } ;
struct jbd2_buffer_trigger_type {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct journal_head* FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*) ; 

void FUNC3(struct buffer_head *bh,
			       struct jbd2_buffer_trigger_type *type)
{
	struct journal_head *jh = FUNC1(bh);

	if (FUNC0(!jh))
		return;
	jh->b_triggers = type;
	FUNC2(jh);
}