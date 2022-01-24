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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_userpolicy_info {int /*<<< orphan*/  dir; int /*<<< orphan*/  sel; scalar_t__ index; } ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_user_polexpire {scalar_t__ hard; struct xfrm_userpolicy_info pol; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dead; } ;
struct xfrm_policy {TYPE_1__ walk; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_pid; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t XFRMA_IF_ID ; 
 size_t XFRMA_SEC_CTX ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct xfrm_user_sec_ctx* FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 struct xfrm_user_polexpire* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_sec_ctx*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_policy*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr**,struct xfrm_mark*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC14 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 struct xfrm_policy* FUNC15 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct xfrm_sec_ctx*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct xfrm_policy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC7(skb->sk);
	struct xfrm_policy *xp;
	struct xfrm_user_polexpire *up = FUNC4(nlh);
	struct xfrm_userpolicy_info *p = &up->pol;
	u8 type = XFRM_POLICY_TYPE_MAIN;
	int err = -ENOENT;
	struct xfrm_mark m;
	u32 mark = FUNC12(attrs, &m);
	u32 if_id = 0;

	err = FUNC0(&type, attrs);
	if (err)
		return err;

	err = FUNC9(p->dir);
	if (err)
		return err;

	if (attrs[XFRMA_IF_ID])
		if_id = FUNC3(attrs[XFRMA_IF_ID]);

	if (p->index)
		xp = FUNC14(net, mark, if_id, type, p->dir, p->index, 0, &err);
	else {
		struct nlattr *rt = attrs[XFRMA_SEC_CTX];
		struct xfrm_sec_ctx *ctx;

		err = FUNC10(attrs);
		if (err)
			return err;

		ctx = NULL;
		if (rt) {
			struct xfrm_user_sec_ctx *uctx = FUNC2(rt);

			err = FUNC5(&ctx, uctx, GFP_KERNEL);
			if (err)
				return err;
		}
		xp = FUNC15(net, mark, if_id, type, p->dir,
					   &p->sel, ctx, 0, &err);
		FUNC6(ctx);
	}
	if (xp == NULL)
		return -ENOENT;

	if (FUNC8(xp->walk.dead))
		goto out;

	err = 0;
	if (up->hard) {
		FUNC16(xp, p->dir);
		FUNC11(xp, 1, true);
	}
	FUNC1(xp, p->dir, up->hard, nlh->nlmsg_pid);

out:
	FUNC13(xp);
	return err;
}