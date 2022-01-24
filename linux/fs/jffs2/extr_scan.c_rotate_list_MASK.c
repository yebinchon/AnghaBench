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
typedef  int /*<<< orphan*/  uint32_t ;
struct list_head {struct list_head* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 

__attribute__((used)) static void FUNC2(struct list_head *head, uint32_t count)
{
	struct list_head *n = head->next;

	FUNC1(head);
	while(count--) {
		n = n->next;
	}
	FUNC0(head, n);
}