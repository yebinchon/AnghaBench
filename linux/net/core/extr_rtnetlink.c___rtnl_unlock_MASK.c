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
struct sk_buff {struct sk_buff* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct sk_buff* defer_kfree_skb_list ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtnl_mutex ; 

void FUNC3(void)
{
	struct sk_buff *head = defer_kfree_skb_list;

	defer_kfree_skb_list = NULL;

	FUNC2(&rtnl_mutex);

	while (head) {
		struct sk_buff *next = head->next;

		FUNC1(head);
		FUNC0();
		head = next;
	}
}