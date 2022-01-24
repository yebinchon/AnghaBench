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
struct xfrm_usersa_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct xfrm_state {TYPE_1__ km; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {scalar_t__ event; int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 scalar_t__ XFRM_MSG_NEWSA ; 
 scalar_t__ XFRM_STATE_DEAD ; 
 scalar_t__ XFRM_STATE_VALID ; 
 scalar_t__ XFRM_STATE_VOID ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_usersa_info* FUNC2 (struct nlmsghdr*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfrm_usersa_info*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_state*) ; 
 int FUNC7 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC8 (struct net*,struct xfrm_usersa_info*,struct nlattr**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 
 int FUNC11 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC3(skb->sk);
	struct xfrm_usersa_info *p = FUNC2(nlh);
	struct xfrm_state *x;
	int err;
	struct km_event c;

	err = FUNC4(p, attrs);
	if (err)
		return err;

	x = FUNC8(net, p, attrs, &err);
	if (!x)
		return err;

	FUNC9(x);
	if (nlh->nlmsg_type == XFRM_MSG_NEWSA)
		err = FUNC7(x);
	else
		err = FUNC11(x);

	FUNC5(x, err ? 0 : 1, true);

	if (err < 0) {
		x->km.state = XFRM_STATE_DEAD;
		FUNC6(x);
		FUNC0(x);
		goto out;
	}

	if (x->km.state == XFRM_STATE_VOID)
		x->km.state = XFRM_STATE_VALID;

	c.seq = nlh->nlmsg_seq;
	c.portid = nlh->nlmsg_pid;
	c.event = nlh->nlmsg_type;

	FUNC1(x, &c);
out:
	FUNC10(x);
	return err;
}