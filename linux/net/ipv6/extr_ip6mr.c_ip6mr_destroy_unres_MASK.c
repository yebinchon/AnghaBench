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
struct nlmsgerr {int /*<<< orphan*/  error; } ;
struct net {int dummy; } ;
struct mr_table {int /*<<< orphan*/  cache_resolve_queue_len; int /*<<< orphan*/  net; } ;
struct TYPE_6__ {int /*<<< orphan*/  unresolved; } ;
struct TYPE_7__ {TYPE_1__ unres; } ;
struct TYPE_8__ {TYPE_2__ mfc_un; } ;
struct mfc6_cache {TYPE_3__ _c; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  portid; } ;
struct TYPE_9__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 TYPE_5__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mfc6_cache*) ; 
 TYPE_4__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct net* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 struct nlmsghdr* FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct mr_table *mrt, struct mfc6_cache *c)
{
	struct net *net = FUNC7(&mrt->net);
	struct sk_buff *skb;

	FUNC1(&mrt->cache_resolve_queue_len);

	while ((skb = FUNC9(&c->_c.mfc_un.unres.unresolved)) != NULL) {
		if (FUNC3(skb)->version == 0) {
			struct nlmsghdr *nlh = FUNC10(skb,
							sizeof(struct ipv6hdr));
			nlh->nlmsg_type = NLMSG_ERROR;
			nlh->nlmsg_len = FUNC6(sizeof(struct nlmsgerr));
			FUNC11(skb, nlh->nlmsg_len);
			((struct nlmsgerr *)FUNC5(nlh))->error = -ETIMEDOUT;
			FUNC8(skb, net, FUNC0(skb).portid);
		} else
			FUNC4(skb);
	}

	FUNC2(c);
}