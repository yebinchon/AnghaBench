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
struct xfrm_userpolicy_info {int dummy; } ;
struct xfrm_policy {int /*<<< orphan*/  if_id; int /*<<< orphan*/  mark; int /*<<< orphan*/  type; } ;
struct xfrm_dump_info {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  XFRM_MSG_NEWPOLICY ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,struct xfrm_userpolicy_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC3 (struct xfrm_policy*,struct sk_buff*) ; 
 int FUNC4 (struct xfrm_policy*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_userpolicy_info* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct xfrm_policy *xp, int dir, int count, void *ptr)
{
	struct xfrm_dump_info *sp = ptr;
	struct xfrm_userpolicy_info *p;
	struct sk_buff *in_skb = sp->in_skb;
	struct sk_buff *skb = sp->out_skb;
	struct nlmsghdr *nlh;
	int err;

	nlh = FUNC8(skb, FUNC0(in_skb).portid, sp->nlmsg_seq,
			XFRM_MSG_NEWPOLICY, sizeof(*p), sp->nlmsg_flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	p = FUNC6(nlh);
	FUNC1(xp, p, dir);
	err = FUNC4(xp, skb);
	if (!err)
		err = FUNC3(xp, skb);
	if (!err)
		err = FUNC2(xp->type, skb);
	if (!err)
		err = FUNC10(skb, &xp->mark);
	if (!err)
		err = FUNC9(skb, xp->if_id);
	if (err) {
		FUNC5(skb, nlh);
		return err;
	}
	FUNC7(skb, nlh);
	return 0;
}