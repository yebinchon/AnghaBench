#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qlist_head {scalar_t__ bytes; TYPE_1__* tail; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlist_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlist_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qlist_head *from, struct qlist_head *to)
{
	if (FUNC2(FUNC0(from)))
		return;

	if (FUNC0(to)) {
		*to = *from;
		FUNC1(from);
		return;
	}

	to->tail->next = from->head;
	to->tail = from->tail;
	to->bytes += from->bytes;

	FUNC1(from);
}