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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_userpolicy_id {int /*<<< orphan*/  dir; scalar_t__ index; int /*<<< orphan*/  sel; } ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct xfrm_policy {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct TYPE_5__ {scalar_t__ byid; } ;
struct km_event {scalar_t__ event; int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; TYPE_2__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 TYPE_3__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 size_t XFRMA_IF_ID ; 
 size_t XFRMA_SEC_CTX ; 
 scalar_t__ XFRM_MSG_DELPOLICY ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 int FUNC3 (int /*<<< orphan*/ *,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_policy*,int /*<<< orphan*/ ,struct km_event*) ; 
 struct xfrm_user_sec_ctx* FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 struct xfrm_userpolicy_id* FUNC7 (struct nlmsghdr*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_sec_ctx*) ; 
 struct net* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC14 (struct xfrm_policy*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nlattr**,struct xfrm_mark*) ; 
 int /*<<< orphan*/  FUNC16 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC17 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 struct xfrm_policy* FUNC18 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct xfrm_sec_ctx*,int,int*) ; 
 struct sk_buff* FUNC19 (struct sk_buff*,struct xfrm_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC11(skb->sk);
	struct xfrm_policy *xp;
	struct xfrm_userpolicy_id *p;
	u8 type = XFRM_POLICY_TYPE_MAIN;
	int err;
	struct km_event c;
	int delete;
	struct xfrm_mark m;
	u32 mark = FUNC15(attrs, &m);
	u32 if_id = 0;

	p = FUNC7(nlh);
	delete = nlh->nlmsg_type == XFRM_MSG_DELPOLICY;

	err = FUNC3(&type, attrs);
	if (err)
		return err;

	err = FUNC12(p->dir);
	if (err)
		return err;

	if (attrs[XFRMA_IF_ID])
		if_id = FUNC6(attrs[XFRMA_IF_ID]);

	if (p->index)
		xp = FUNC17(net, mark, if_id, type, p->dir, p->index, delete, &err);
	else {
		struct nlattr *rt = attrs[XFRMA_SEC_CTX];
		struct xfrm_sec_ctx *ctx;

		err = FUNC13(attrs);
		if (err)
			return err;

		ctx = NULL;
		if (rt) {
			struct xfrm_user_sec_ctx *uctx = FUNC5(rt);

			err = FUNC9(&ctx, uctx, GFP_KERNEL);
			if (err)
				return err;
		}
		xp = FUNC18(net, mark, if_id, type, p->dir, &p->sel,
					   ctx, delete, &err);
		FUNC10(ctx);
	}
	if (xp == NULL)
		return -ENOENT;

	if (!delete) {
		struct sk_buff *resp_skb;

		resp_skb = FUNC19(skb, xp, p->dir, nlh->nlmsg_seq);
		if (FUNC0(resp_skb)) {
			err = FUNC2(resp_skb);
		} else {
			err = FUNC8(net->xfrm.nlsk, resp_skb,
					    FUNC1(skb).portid);
		}
	} else {
		FUNC14(xp, err ? 0 : 1, true);

		if (err != 0)
			goto out;

		c.data.byid = p->index;
		c.event = nlh->nlmsg_type;
		c.seq = nlh->nlmsg_seq;
		c.portid = nlh->nlmsg_pid;
		FUNC4(xp, p->dir, &c);
	}

out:
	FUNC16(xp);
	return err;
}