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
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct tipc_monitor {int /*<<< orphan*/  lock; int /*<<< orphan*/  list_gen; int /*<<< orphan*/  peer_cnt; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int TIPC_MAX_BEARER_NAME ; 
 int /*<<< orphan*/  TIPC_NLA_MON ; 
 int /*<<< orphan*/  TIPC_NLA_MON_ACTIVE ; 
 int /*<<< orphan*/  TIPC_NLA_MON_BEARER_NAME ; 
 int /*<<< orphan*/  TIPC_NLA_MON_LISTGEN ; 
 int /*<<< orphan*/  TIPC_NLA_MON_PEERCNT ; 
 int /*<<< orphan*/  TIPC_NLA_MON_REF ; 
 int /*<<< orphan*/  TIPC_NL_MON_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct net*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_genl_family ; 
 scalar_t__ FUNC12 (struct net*,struct tipc_monitor*) ; 
 struct tipc_monitor* FUNC13 (struct net*,int /*<<< orphan*/ ) ; 

int FUNC14(struct net *net, struct tipc_nl_msg *msg,
			  u32 bearer_id)
{
	struct tipc_monitor *mon = FUNC13(net, bearer_id);
	char bearer_name[TIPC_MAX_BEARER_NAME];
	struct nlattr *attrs;
	void *hdr;
	int ret;

	ret = FUNC11(net, bearer_name, bearer_id);
	if (ret || !mon)
		return 0;

	hdr = FUNC2(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
			  NLM_F_MULTI, TIPC_NL_MON_GET);
	if (!hdr)
		return -EMSGSIZE;

	attrs = FUNC5(msg->skb, TIPC_NLA_MON);
	if (!attrs)
		goto msg_full;

	FUNC9(&mon->lock);
	if (FUNC8(msg->skb, TIPC_NLA_MON_REF, bearer_id))
		goto attr_msg_full;
	if (FUNC12(net, mon))
		if (FUNC6(msg->skb, TIPC_NLA_MON_ACTIVE))
			goto attr_msg_full;
	if (FUNC7(msg->skb, TIPC_NLA_MON_BEARER_NAME, bearer_name))
		goto attr_msg_full;
	if (FUNC8(msg->skb, TIPC_NLA_MON_PEERCNT, mon->peer_cnt))
		goto attr_msg_full;
	if (FUNC8(msg->skb, TIPC_NLA_MON_LISTGEN, mon->list_gen))
		goto attr_msg_full;

	FUNC10(&mon->lock);
	FUNC4(msg->skb, attrs);
	FUNC1(msg->skb, hdr);

	return 0;

attr_msg_full:
	FUNC10(&mon->lock);
	FUNC3(msg->skb, attrs);
msg_full:
	FUNC0(msg->skb, hdr);

	return -EMSGSIZE;
}