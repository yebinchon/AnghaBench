#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xfrm_user_acquire {int /*<<< orphan*/  seq; int /*<<< orphan*/  calgos; int /*<<< orphan*/  ealgos; int /*<<< orphan*/  aalgos; int /*<<< orphan*/  policy; int /*<<< orphan*/  sel; int /*<<< orphan*/  saddr; int /*<<< orphan*/  id; } ;
struct xfrm_tmpl {int /*<<< orphan*/  calgos; int /*<<< orphan*/  ealgos; int /*<<< orphan*/  aalgos; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; } ;
struct TYPE_3__ {int /*<<< orphan*/  saddr; } ;
struct xfrm_state {TYPE_2__ km; int /*<<< orphan*/  sel; TYPE_1__ props; int /*<<< orphan*/  id; } ;
struct xfrm_policy {int /*<<< orphan*/  if_id; int /*<<< orphan*/  mark; int /*<<< orphan*/  type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRM_MSG_ACQUIRE ; 
 int /*<<< orphan*/  XFRM_POLICY_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC3 (struct xfrm_policy*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_user_acquire* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct xfrm_state *x,
			 struct xfrm_tmpl *xt, struct xfrm_policy *xp)
{
	__u32 seq = FUNC9();
	struct xfrm_user_acquire *ua;
	struct nlmsghdr *nlh;
	int err;

	nlh = FUNC8(skb, 0, 0, XFRM_MSG_ACQUIRE, sizeof(*ua), 0);
	if (nlh == NULL)
		return -EMSGSIZE;

	ua = FUNC6(nlh);
	FUNC4(&ua->id, &x->id, sizeof(ua->id));
	FUNC4(&ua->saddr, &x->props.saddr, sizeof(ua->saddr));
	FUNC4(&ua->sel, &x->sel, sizeof(ua->sel));
	FUNC0(xp, &ua->policy, XFRM_POLICY_OUT);
	ua->aalgos = xt->aalgos;
	ua->ealgos = xt->ealgos;
	ua->calgos = xt->calgos;
	ua->seq = x->km.seq = seq;

	err = FUNC3(xp, skb);
	if (!err)
		err = FUNC2(x, skb);
	if (!err)
		err = FUNC1(xp->type, skb);
	if (!err)
		err = FUNC11(skb, &xp->mark);
	if (!err)
		err = FUNC10(skb, xp->if_id);
	if (err) {
		FUNC5(skb, nlh);
		return err;
	}

	FUNC7(skb, nlh);
	return 0;
}