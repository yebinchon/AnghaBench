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
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_flags; } ;

/* Variables and functions */
 int NLM_F_ACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*,int,int /*<<< orphan*/ *) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*) ; 
 struct nlmsghdr* FUNC5 (struct nlmsghdr*,int*) ; 
 scalar_t__ FUNC6 (struct nlmsghdr*,int) ; 

__attribute__((used)) static void FUNC7(struct sk_buff  *skb)
{
	struct nlmsghdr *nlh;
	/*
	 * len MUST be signed for nlmsg_next to be able to dec it below 0
	 * if the nlmsg_len was not aligned
	 */
	int len;
	int err;

	nlh = FUNC4(skb);
	len = skb->len;

	FUNC0();
	while (FUNC6(nlh, len)) {
		err = FUNC2(skb, nlh);
		/* if err or if this message says it wants a response */
		if (err || (nlh->nlmsg_flags & NLM_F_ACK))
			FUNC3(skb, nlh, err, NULL);

		nlh = FUNC5(nlh, &len);
	}
	FUNC1();
}