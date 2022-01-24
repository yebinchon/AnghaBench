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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct sk_buff_head*) ; 
 scalar_t__ FUNC6 (struct sk_buff**,struct sk_buff**) ; 

bool FUNC7(struct sk_buff_head *list)
{
	struct sk_buff *skb, *tmp = NULL;

	if (FUNC5(list) == 1)
		return true;

	while ((skb = FUNC0(list))) {
		skb->next = NULL;
		if (FUNC6(&tmp, &skb)) {
			FUNC3(list, skb);
			return true;
		}
		if (!tmp)
			break;
	}
	FUNC2(list);
	FUNC1(list);
	FUNC4("Failed do assemble buffer\n");
	return false;
}