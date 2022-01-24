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
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct audit_buffer {struct sk_buff* skb; } ;

/* Variables and functions */
 scalar_t__ NLMSG_HDRLEN ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  audit_queue ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  kauditd_wait ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct audit_buffer *ab)
{
	struct sk_buff *skb;
	struct nlmsghdr *nlh;

	if (!ab)
		return;

	if (FUNC2()) {
		skb = ab->skb;
		ab->skb = NULL;

		/* setup the netlink header, see the comments in
		 * kauditd_send_multicast_skb() for length quirks */
		nlh = FUNC3(skb);
		nlh->nlmsg_len = skb->len - NLMSG_HDRLEN;

		/* queue the netlink packet and poke the kauditd thread */
		FUNC4(&audit_queue, skb);
		FUNC5(&kauditd_wait);
	} else
		FUNC1("rate limit exceeded");

	FUNC0(ab);
}