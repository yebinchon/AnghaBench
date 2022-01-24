#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_usersa_id {int /*<<< orphan*/  family; int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_state {int /*<<< orphan*/  lock; } ;
struct xfrm_mark {int dummy; } ;
struct xfrm_aevent_id {int /*<<< orphan*/  flags; struct xfrm_usersa_id sa_id; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_4__ {int /*<<< orphan*/  aevent; } ;
struct km_event {int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; TYPE_1__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_3__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct xfrm_state*,struct km_event*) ; 
 struct xfrm_aevent_id* FUNC3 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr**,struct xfrm_mark*) ; 
 struct xfrm_state* FUNC11 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC6(skb->sk);
	struct xfrm_state *x;
	struct sk_buff *r_skb;
	int err;
	struct km_event c;
	u32 mark;
	struct xfrm_mark m;
	struct xfrm_aevent_id *p = FUNC3(nlh);
	struct xfrm_usersa_id *id = &p->sa_id;

	mark = FUNC10(attrs, &m);

	x = FUNC11(net, mark, &id->daddr, id->spi, id->proto, id->family);
	if (x == NULL)
		return -ESRCH;

	r_skb = FUNC4(FUNC9(x), GFP_ATOMIC);
	if (r_skb == NULL) {
		FUNC12(x);
		return -ENOMEM;
	}

	/*
	 * XXX: is this lock really needed - none of the other
	 * gets lock (the concern is things getting updated
	 * while we are still reading) - jhs
	*/
	FUNC7(&x->lock);
	c.data.aevent = p->flags;
	c.seq = nlh->nlmsg_seq;
	c.portid = nlh->nlmsg_pid;

	err = FUNC2(r_skb, x, &c);
	FUNC0(err < 0);

	err = FUNC5(net->xfrm.nlsk, r_skb, FUNC1(skb).portid);
	FUNC8(&x->lock);
	FUNC12(x);
	return err;
}