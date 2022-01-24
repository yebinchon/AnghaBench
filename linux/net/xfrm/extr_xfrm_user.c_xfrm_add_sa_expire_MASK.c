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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_usersa_info {int /*<<< orphan*/  family; TYPE_1__ id; } ;
struct xfrm_user_expire {scalar_t__ hard; struct xfrm_usersa_info state; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_2__ km; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_pid; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ XFRM_STATE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct xfrm_user_expire* FUNC2 (struct nlmsghdr*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_state*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr**,struct xfrm_mark*) ; 
 struct xfrm_state* FUNC8 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC3(skb->sk);
	struct xfrm_state *x;
	int err;
	struct xfrm_user_expire *ue = FUNC2(nlh);
	struct xfrm_usersa_info *p = &ue->state;
	struct xfrm_mark m;
	u32 mark = FUNC7(attrs, &m);

	x = FUNC8(net, mark, &p->id.daddr, p->id.spi, p->id.proto, p->family);

	err = -ENOENT;
	if (x == NULL)
		return err;

	FUNC4(&x->lock);
	err = -EINVAL;
	if (x->km.state != XFRM_STATE_VALID)
		goto out;
	FUNC1(x, ue->hard, nlh->nlmsg_pid);

	if (ue->hard) {
		FUNC0(x);
		FUNC6(x, 1, true);
	}
	err = 0;
out:
	FUNC5(&x->lock);
	FUNC9(x);
	return err;
}