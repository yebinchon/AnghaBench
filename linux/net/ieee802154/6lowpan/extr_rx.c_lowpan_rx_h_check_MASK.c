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
struct sk_buff {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline bool FUNC7(struct sk_buff *skb)
{
	__le16 fc = FUNC0(skb);

	/* check on ieee802154 conform 6LoWPAN header */
	if (!FUNC1(fc) ||
	    !FUNC2(fc, skb))
		return false;

	/* check if we can dereference the dispatch */
	if (FUNC6(!skb->len))
		return false;

	if (FUNC3(*FUNC5(skb)) ||
	    FUNC4(*FUNC5(skb)))
		return false;

	return true;
}