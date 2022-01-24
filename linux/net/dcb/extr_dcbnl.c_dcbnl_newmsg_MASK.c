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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct dcbmsg {scalar_t__ dcb_pad; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dcb_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct dcbmsg* FUNC1 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC4(int type, u8 cmd, u32 port, u32 seq,
				    u32 flags, struct nlmsghdr **nlhp)
{
	struct sk_buff *skb;
	struct dcbmsg *dcb;
	struct nlmsghdr *nlh;

	skb = FUNC2(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return NULL;

	nlh = FUNC3(skb, port, seq, type, sizeof(*dcb), flags);
	FUNC0(!nlh);

	dcb = FUNC1(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = cmd;
	dcb->dcb_pad = 0;

	if (nlhp)
		*nlhp = nlh;

	return skb;
}