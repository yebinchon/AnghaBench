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
struct xfrm_usersa_id {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ESRCH ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 TYPE_2__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct xfrm_usersa_id* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,struct xfrm_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC8 (struct net*,struct xfrm_usersa_id*,struct nlattr**,int*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC5(skb->sk);
	struct xfrm_usersa_id *p = FUNC3(nlh);
	struct xfrm_state *x;
	struct sk_buff *resp_skb;
	int err = -ESRCH;

	x = FUNC8(net, p, attrs, &err);
	if (x == NULL)
		goto out_noput;

	resp_skb = FUNC6(skb, x, nlh->nlmsg_seq);
	if (FUNC0(resp_skb)) {
		err = FUNC2(resp_skb);
	} else {
		err = FUNC4(net->xfrm.nlsk, resp_skb, FUNC1(skb).portid);
	}
	FUNC7(x);
out_noput:
	return err;
}