#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; int /*<<< orphan*/  nlmsg_type; } ;
struct nlmsgerr {int /*<<< orphan*/  msg; int /*<<< orphan*/  error; } ;
struct net {int dummy; } ;
struct mr_table {int /*<<< orphan*/  cache_resolve_queue_len; int /*<<< orphan*/  net; } ;
struct TYPE_6__ {int /*<<< orphan*/  unresolved; } ;
struct TYPE_7__ {TYPE_1__ unres; } ;
struct TYPE_8__ {TYPE_2__ mfc_un; } ;
struct mfc_cache {TYPE_3__ _c; } ;
struct iphdr {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  portid; } ;
struct TYPE_9__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 TYPE_5__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct mfc_cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct nlmsgerr* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct net* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 struct nlmsghdr* FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct mr_table *mrt, struct mfc_cache *c)
{
	struct net *net = FUNC8(&mrt->net);
	struct sk_buff *skb;
	struct nlmsgerr *e;

	FUNC1(&mrt->cache_resolve_queue_len);

	while ((skb = FUNC10(&c->_c.mfc_un.unres.unresolved))) {
		if (FUNC2(skb)->version == 0) {
			struct nlmsghdr *nlh = FUNC11(skb,
							sizeof(struct iphdr));
			nlh->nlmsg_type = NLMSG_ERROR;
			nlh->nlmsg_len = FUNC7(sizeof(struct nlmsgerr));
			FUNC12(skb, nlh->nlmsg_len);
			e = FUNC6(nlh);
			e->error = -ETIMEDOUT;
			FUNC5(&e->msg, 0, sizeof(e->msg));

			FUNC9(skb, net, FUNC0(skb).portid);
		} else {
			FUNC4(skb);
		}
	}

	FUNC3(c);
}