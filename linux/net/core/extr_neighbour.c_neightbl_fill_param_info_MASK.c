#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct neigh_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; int /*<<< orphan*/  family; } ;
struct neigh_parms {int dummy; } ;
struct ndtmsg {scalar_t__ ndtm_pad2; scalar_t__ ndtm_pad1; int /*<<< orphan*/  ndtm_family; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NDTA_NAME ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct neigh_parms*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ndtmsg* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
				    struct neigh_table *tbl,
				    struct neigh_parms *parms,
				    u32 pid, u32 seq, int type,
				    unsigned int flags)
{
	struct ndtmsg *ndtmsg;
	struct nlmsghdr *nlh;

	nlh = FUNC5(skb, pid, seq, type, sizeof(*ndtmsg), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	ndtmsg = FUNC3(nlh);

	FUNC6(&tbl->lock);
	ndtmsg->ndtm_family = tbl->family;
	ndtmsg->ndtm_pad1   = 0;
	ndtmsg->ndtm_pad2   = 0;

	if (FUNC1(skb, NDTA_NAME, tbl->id) < 0 ||
	    FUNC0(skb, parms) < 0)
		goto errout;

	FUNC7(&tbl->lock);
	FUNC4(skb, nlh);
	return 0;
errout:
	FUNC7(&tbl->lock);
	FUNC2(skb, nlh);
	return -EMSGSIZE;
}