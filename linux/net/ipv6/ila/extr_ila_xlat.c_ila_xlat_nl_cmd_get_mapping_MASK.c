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
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ila_xlat_params {int dummy; } ;
struct ila_net {int dummy; } ;
struct ila_map {int dummy; } ;
struct genl_info {TYPE_1__* genlhdr; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct net* FUNC0 (struct genl_info*) ; 
 int FUNC1 (struct sk_buff*,struct genl_info*) ; 
 int FUNC2 (struct ila_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ila_map* FUNC3 (struct ila_xlat_params*,struct ila_net*) ; 
 int /*<<< orphan*/  ila_net_id ; 
 struct ila_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct genl_info*,struct ila_xlat_params*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC0(info);
	struct ila_net *ilan = FUNC4(net, ila_net_id);
	struct sk_buff *msg;
	struct ila_xlat_params xp;
	struct ila_map *ila;
	int ret;

	ret = FUNC7(info, &xp);
	if (ret)
		return ret;

	msg = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	FUNC8();

	ila = FUNC3(&xp, ilan);
	if (ila) {
		ret = FUNC2(ila,
				    info->snd_portid,
				    info->snd_seq, 0, msg,
				    info->genlhdr->cmd);
	}

	FUNC9();

	if (ret < 0)
		goto out_free;

	return FUNC1(msg, info);

out_free:
	FUNC5(msg);
	return ret;
}