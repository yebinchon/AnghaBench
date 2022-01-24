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
struct xfrm_user_polexpire {int hard; int /*<<< orphan*/  pol; } ;
struct xfrm_policy {int /*<<< orphan*/  if_id; int /*<<< orphan*/  mark; int /*<<< orphan*/  type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int hard; } ;
struct km_event {int /*<<< orphan*/  portid; TYPE_1__ data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRM_MSG_POLEXPIRE ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (struct xfrm_policy*,struct sk_buff*) ; 
 int FUNC3 (struct xfrm_policy*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_user_polexpire* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct xfrm_policy *xp,
			   int dir, const struct km_event *c)
{
	struct xfrm_user_polexpire *upe;
	int hard = c->data.hard;
	struct nlmsghdr *nlh;
	int err;

	nlh = FUNC7(skb, c->portid, 0, XFRM_MSG_POLEXPIRE, sizeof(*upe), 0);
	if (nlh == NULL)
		return -EMSGSIZE;

	upe = FUNC5(nlh);
	FUNC0(xp, &upe->pol, dir);
	err = FUNC3(xp, skb);
	if (!err)
		err = FUNC2(xp, skb);
	if (!err)
		err = FUNC1(xp->type, skb);
	if (!err)
		err = FUNC9(skb, &xp->mark);
	if (!err)
		err = FUNC8(skb, xp->if_id);
	if (err) {
		FUNC4(skb, nlh);
		return err;
	}
	upe->hard = !!hard;

	FUNC6(skb, nlh);
	return 0;
}