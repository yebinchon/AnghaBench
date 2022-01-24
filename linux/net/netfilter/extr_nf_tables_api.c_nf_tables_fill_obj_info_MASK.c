#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nft_table {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct nft_object {int /*<<< orphan*/  handle; int /*<<< orphan*/  use; TYPE_4__* ops; TYPE_2__ key; } ;
struct nfgenmsg {int nfgen_family; int /*<<< orphan*/  res_id; int /*<<< orphan*/  version; } ;
struct TYPE_5__ {int base_seq; } ;
struct net {TYPE_1__ nft; } ;
struct TYPE_8__ {TYPE_3__* type; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 int /*<<< orphan*/  NFTA_OBJ_DATA ; 
 int /*<<< orphan*/  NFTA_OBJ_HANDLE ; 
 int /*<<< orphan*/  NFTA_OBJ_NAME ; 
 int /*<<< orphan*/  NFTA_OBJ_PAD ; 
 int /*<<< orphan*/  NFTA_OBJ_TABLE ; 
 int /*<<< orphan*/  NFTA_OBJ_TYPE ; 
 int /*<<< orphan*/  NFTA_OBJ_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,struct nft_object*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlmsghdr*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct net *net,
				   u32 portid, u32 seq, int event, u32 flags,
				   int family, const struct nft_table *table,
				   struct nft_object *obj, bool reset)
{
	struct nfgenmsg *nfmsg;
	struct nlmsghdr *nlh;

	event = FUNC3(NFNL_SUBSYS_NFTABLES, event);
	nlh = FUNC10(skb, portid, seq, event, sizeof(struct nfgenmsg), flags);
	if (nlh == NULL)
		goto nla_put_failure;

	nfmsg = FUNC8(nlh);
	nfmsg->nfgen_family	= family;
	nfmsg->version		= NFNETLINK_V0;
	nfmsg->res_id		= FUNC2(net->nft.base_seq & 0xffff);

	if (FUNC7(skb, NFTA_OBJ_TABLE, table->name) ||
	    FUNC7(skb, NFTA_OBJ_NAME, obj->key.name) ||
	    FUNC5(skb, NFTA_OBJ_TYPE, FUNC1(obj->ops->type->type)) ||
	    FUNC5(skb, NFTA_OBJ_USE, FUNC1(obj->use)) ||
	    FUNC4(skb, NFTA_OBJ_DATA, obj, reset) ||
	    FUNC6(skb, NFTA_OBJ_HANDLE, FUNC0(obj->handle),
			 NFTA_OBJ_PAD))
		goto nla_put_failure;

	FUNC9(skb, nlh);
	return 0;

nla_put_failure:
	FUNC11(skb, nlh);
	return -1;
}