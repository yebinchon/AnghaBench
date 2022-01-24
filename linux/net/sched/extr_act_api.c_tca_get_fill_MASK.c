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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcamsg {scalar_t__ tca__pad2; scalar_t__ tca__pad1; int /*<<< orphan*/  tca_family; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  TCA_ACT_TAB ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct tcamsg* FUNC2 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct tc_action**,int,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct tc_action *actions[],
			u32 portid, u32 seq, u16 flags, int event, int bind,
			int ref)
{
	struct tcamsg *t;
	struct nlmsghdr *nlh;
	unsigned char *b = FUNC5(skb);
	struct nlattr *nest;

	nlh = FUNC3(skb, portid, seq, event, sizeof(*t), flags);
	if (!nlh)
		goto out_nlmsg_trim;
	t = FUNC2(nlh);
	t->tca_family = AF_UNSPEC;
	t->tca__pad1 = 0;
	t->tca__pad2 = 0;

	nest = FUNC1(skb, TCA_ACT_TAB);
	if (!nest)
		goto out_nlmsg_trim;

	if (FUNC6(skb, actions, bind, ref) < 0)
		goto out_nlmsg_trim;

	FUNC0(skb, nest);

	nlh->nlmsg_len = FUNC5(skb) - b;
	return skb->len;

out_nlmsg_trim:
	FUNC4(skb, b);
	return -1;
}