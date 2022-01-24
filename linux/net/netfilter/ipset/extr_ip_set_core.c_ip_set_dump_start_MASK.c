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
typedef  int u32 ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_len; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct ip_set_net {int ip_set_max; int is_destroyed; } ;
struct ip_set {int family; int revision; int /*<<< orphan*/  name; TYPE_3__* variant; TYPE_2__* type; int /*<<< orphan*/  ref_netlink; } ;
typedef  int ip_set_id_t ;
struct TYPE_8__ {scalar_t__ portid; } ;
struct TYPE_7__ {int (* head ) (struct ip_set*,struct sk_buff*) ;int (* list ) (struct ip_set*,struct sk_buff*,struct netlink_callback*) ;int /*<<< orphan*/  (* uref ) (struct ip_set*,struct netlink_callback*,int) ;} ;
struct TYPE_6__ {int features; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int DUMP_ALL ; 
 int FUNC0 (int) ; 
 int DUMP_LAST ; 
 int DUMP_ONE ; 
 int FUNC1 (int) ; 
 int EFAULT ; 
 int EMSGSIZE ; 
 int ENOENT ; 
 int /*<<< orphan*/  IPSET_ATTR_FAMILY ; 
 int /*<<< orphan*/  IPSET_ATTR_INDEX ; 
 int /*<<< orphan*/  IPSET_ATTR_PROTOCOL ; 
 int /*<<< orphan*/  IPSET_ATTR_REVISION ; 
 int /*<<< orphan*/  IPSET_ATTR_SETNAME ; 
 int /*<<< orphan*/  IPSET_ATTR_TYPENAME ; 
 size_t IPSET_CB_ARG0 ; 
 size_t IPSET_CB_DUMP ; 
 size_t IPSET_CB_INDEX ; 
 size_t IPSET_CB_PROTO ; 
 int /*<<< orphan*/  IPSET_CMD_LIST ; 
 int IPSET_DUMP_LAST ; 
 int IPSET_FLAG_LIST_HEADER ; 
 int IPSET_FLAG_LIST_SETNAME ; 
 void* IPSET_INVALID_ID ; 
 int IPSET_PROTOCOL_MIN ; 
 TYPE_4__ FUNC2 (int /*<<< orphan*/ ) ; 
 int NLM_F_ACK ; 
 unsigned int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC3 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct netlink_callback*,struct ip_set_net*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct ip_set* FUNC7 (struct ip_set_net*,int) ; 
 struct ip_set_net* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_set_ref_lock ; 
 struct ip_set* FUNC9 (struct ip_set_net*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct nlmsghdr*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC18 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct ip_set*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct ip_set*,struct netlink_callback*,int) ; 
 int FUNC21 (struct ip_set*,struct sk_buff*,struct netlink_callback*) ; 
 int /*<<< orphan*/  FUNC22 (struct ip_set*,struct netlink_callback*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct ip_set*,struct netlink_callback*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC26(struct sk_buff *skb, struct netlink_callback *cb)
{
	ip_set_id_t index = IPSET_INVALID_ID, max;
	struct ip_set *set = NULL;
	struct nlmsghdr *nlh = NULL;
	unsigned int flags = FUNC2(cb->skb).portid ? NLM_F_MULTI : 0;
	struct ip_set_net *inst = FUNC8(FUNC17(skb->sk));
	u32 dump_type, dump_flags;
	bool is_destroyed;
	int ret = 0;

	if (!cb->args[IPSET_CB_DUMP]) {
		ret = FUNC5(cb, inst);
		if (ret < 0) {
			nlh = FUNC15(cb->skb);
			/* We have to create and send the error message
			 * manually :-(
			 */
			if (nlh->nlmsg_flags & NLM_F_ACK)
				FUNC10(cb->skb, nlh, ret, NULL);
			return ret;
		}
	}

	if (cb->args[IPSET_CB_INDEX] >= inst->ip_set_max)
		goto out;

	dump_type = FUNC1(cb->args[IPSET_CB_DUMP]);
	dump_flags = FUNC0(cb->args[IPSET_CB_DUMP]);
	max = dump_type == DUMP_ONE ? cb->args[IPSET_CB_INDEX] + 1
				    : inst->ip_set_max;
dump_last:
	FUNC16("dump type, flag: %u %u index: %ld\n",
		 dump_type, dump_flags, cb->args[IPSET_CB_INDEX]);
	for (; cb->args[IPSET_CB_INDEX] < max; cb->args[IPSET_CB_INDEX]++) {
		index = (ip_set_id_t)cb->args[IPSET_CB_INDEX];
		FUNC24(&ip_set_ref_lock);
		set = FUNC7(inst, index);
		is_destroyed = inst->is_destroyed;
		if (!set || is_destroyed) {
			FUNC25(&ip_set_ref_lock);
			if (dump_type == DUMP_ONE) {
				ret = -ENOENT;
				goto out;
			}
			if (is_destroyed) {
				/* All sets are just being destroyed */
				ret = 0;
				goto out;
			}
			continue;
		}
		/* When dumping all sets, we must dump "sorted"
		 * so that lists (unions of sets) are dumped last.
		 */
		if (dump_type != DUMP_ONE &&
		    ((dump_type == DUMP_ALL) ==
		     !!(set->type->features & IPSET_DUMP_LAST))) {
			FUNC25(&ip_set_ref_lock);
			continue;
		}
		FUNC16("List set: %s\n", set->name);
		if (!cb->args[IPSET_CB_ARG0]) {
			/* Start listing: make sure set won't be destroyed */
			FUNC16("reference set\n");
			set->ref_netlink++;
		}
		FUNC25(&ip_set_ref_lock);
		nlh = FUNC18(skb, FUNC2(cb->skb).portid,
				cb->nlh->nlmsg_seq, flags,
				IPSET_CMD_LIST);
		if (!nlh) {
			ret = -EMSGSIZE;
			goto release_refcount;
		}
		if (FUNC13(skb, IPSET_ATTR_PROTOCOL,
			       cb->args[IPSET_CB_PROTO]) ||
		    FUNC12(skb, IPSET_ATTR_SETNAME, set->name))
			goto nla_put_failure;
		if (dump_flags & IPSET_FLAG_LIST_SETNAME)
			goto next_set;
		switch (cb->args[IPSET_CB_ARG0]) {
		case 0:
			/* Core header data */
			if (FUNC12(skb, IPSET_ATTR_TYPENAME,
					   set->type->name) ||
			    FUNC13(skb, IPSET_ATTR_FAMILY,
				       set->family) ||
			    FUNC13(skb, IPSET_ATTR_REVISION,
				       set->revision))
				goto nla_put_failure;
			if (cb->args[IPSET_CB_PROTO] > IPSET_PROTOCOL_MIN &&
			    FUNC11(skb, IPSET_ATTR_INDEX, FUNC6(index)))
				goto nla_put_failure;
			ret = set->variant->head(set, skb);
			if (ret < 0)
				goto release_refcount;
			if (dump_flags & IPSET_FLAG_LIST_HEADER)
				goto next_set;
			if (set->variant->uref)
				set->variant->uref(set, cb, true);
			/* fall through */
		default:
			ret = set->variant->list(set, skb, cb);
			if (!cb->args[IPSET_CB_ARG0])
				/* Set is done, proceed with next one */
				goto next_set;
			goto release_refcount;
		}
	}
	/* If we dump all sets, continue with dumping last ones */
	if (dump_type == DUMP_ALL) {
		dump_type = DUMP_LAST;
		cb->args[IPSET_CB_DUMP] = dump_type | (dump_flags << 16);
		cb->args[IPSET_CB_INDEX] = 0;
		if (set && set->variant->uref)
			set->variant->uref(set, cb, false);
		goto dump_last;
	}
	goto out;

nla_put_failure:
	ret = -EFAULT;
next_set:
	if (dump_type == DUMP_ONE)
		cb->args[IPSET_CB_INDEX] = IPSET_INVALID_ID;
	else
		cb->args[IPSET_CB_INDEX]++;
release_refcount:
	/* If there was an error or set is done, release set */
	if (ret || !cb->args[IPSET_CB_ARG0]) {
		set = FUNC9(inst, index);
		if (set->variant->uref)
			set->variant->uref(set, cb, false);
		FUNC16("release set %s\n", set->name);
		FUNC3(set);
		cb->args[IPSET_CB_ARG0] = 0;
	}
out:
	if (nlh) {
		FUNC14(skb, nlh);
		FUNC16("nlmsg_len: %u\n", nlh->nlmsg_len);
		FUNC4(nlh);
	}

	return ret < 0 ? ret : skb->len;
}