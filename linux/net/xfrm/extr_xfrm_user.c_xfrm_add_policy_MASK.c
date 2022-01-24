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
struct xfrm_userpolicy_info {int /*<<< orphan*/  dir; } ;
struct xfrm_policy {int /*<<< orphan*/  security; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {scalar_t__ event; int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 scalar_t__ XFRM_MSG_NEWPOLICY ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,int /*<<< orphan*/ ,struct km_event*) ; 
 struct xfrm_userpolicy_info* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfrm_userpolicy_info*) ; 
 int FUNC6 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_policy*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC9 (struct net*,struct xfrm_userpolicy_info*,struct nlattr**,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct xfrm_policy*,int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC4(skb->sk);
	struct xfrm_userpolicy_info *p = FUNC2(nlh);
	struct xfrm_policy *xp;
	struct km_event c;
	int err;
	int excl;

	err = FUNC5(p);
	if (err)
		return err;
	err = FUNC6(attrs);
	if (err)
		return err;

	xp = FUNC9(net, p, attrs, &err);
	if (!xp)
		return err;

	/* shouldn't excl be based on nlh flags??
	 * Aha! this is anti-netlink really i.e  more pfkey derived
	 * in netlink excl is a flag and you wouldnt need
	 * a type XFRM_MSG_UPDPOLICY - JHS */
	excl = nlh->nlmsg_type == XFRM_MSG_NEWPOLICY;
	err = FUNC10(p->dir, xp, excl);
	FUNC7(xp, err ? 0 : 1, true);

	if (err) {
		FUNC3(xp->security);
		FUNC0(xp);
		return err;
	}

	c.event = nlh->nlmsg_type;
	c.seq = nlh->nlmsg_seq;
	c.portid = nlh->nlmsg_pid;
	FUNC1(xp, p->dir, &c);

	FUNC8(xp);

	return 0;
}