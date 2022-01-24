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
struct tipc_nl_msg {int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; struct sk_buff* skb; } ;
struct tipc_bearer {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 size_t TIPC_NLA_BEARER ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_MAX ; 
 size_t TIPC_NLA_BEARER_NAME ; 
 int FUNC0 (struct tipc_nl_msg*,struct tipc_bearer*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (struct genl_info*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 char* FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct tipc_bearer* FUNC9 (struct net*,char*) ; 
 int /*<<< orphan*/  tipc_nl_bearer_policy ; 

int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	int err;
	char *name;
	struct sk_buff *rep;
	struct tipc_bearer *bearer;
	struct tipc_nl_msg msg;
	struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];
	struct net *net = FUNC1(info);

	if (!info->attrs[TIPC_NLA_BEARER])
		return -EINVAL;

	err = FUNC4(attrs, TIPC_NLA_BEARER_MAX,
					  info->attrs[TIPC_NLA_BEARER],
					  tipc_nl_bearer_policy, info->extack);
	if (err)
		return err;

	if (!attrs[TIPC_NLA_BEARER_NAME])
		return -EINVAL;
	name = FUNC3(attrs[TIPC_NLA_BEARER_NAME]);

	rep = FUNC6(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!rep)
		return -ENOMEM;

	msg.skb = rep;
	msg.portid = info->snd_portid;
	msg.seq = info->snd_seq;

	FUNC7();
	bearer = FUNC9(net, name);
	if (!bearer) {
		err = -EINVAL;
		goto err_out;
	}

	err = FUNC0(&msg, bearer, 0);
	if (err)
		goto err_out;
	FUNC8();

	return FUNC2(rep, info);
err_out:
	FUNC8();
	FUNC5(rep);

	return err;
}