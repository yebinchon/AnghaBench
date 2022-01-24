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
struct xfrm_usersa_id {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  event; int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_usersa_id* FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (struct xfrm_state*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*,int,int) ; 
 int FUNC5 (struct xfrm_state*) ; 
 scalar_t__ FUNC6 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC8 (struct net*,struct xfrm_usersa_id*,struct nlattr**,int*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC3(skb->sk);
	struct xfrm_state *x;
	int err = -ESRCH;
	struct km_event c;
	struct xfrm_usersa_id *p = FUNC1(nlh);

	x = FUNC8(net, p, attrs, &err);
	if (x == NULL)
		return err;

	if ((err = FUNC2(x)) != 0)
		goto out;

	if (FUNC6(x)) {
		err = -EPERM;
		goto out;
	}

	err = FUNC5(x);

	if (err < 0)
		goto out;

	c.seq = nlh->nlmsg_seq;
	c.portid = nlh->nlmsg_pid;
	c.event = nlh->nlmsg_type;
	FUNC0(x, &c);

out:
	FUNC4(x, err ? 0 : 1, true);
	FUNC7(x);
	return err;
}