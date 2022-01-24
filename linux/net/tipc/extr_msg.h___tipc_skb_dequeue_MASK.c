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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct sk_buff_head*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC4(struct sk_buff_head *list,
						 u16 seqno)
{
	struct sk_buff *skb = FUNC3(list);

	if (skb && FUNC2(FUNC1(skb), seqno)) {
		FUNC0(skb, list);
		return skb;
	}
	return NULL;
}