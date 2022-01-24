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
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t L2TP_ATTR_CONN_ID ; 
 int /*<<< orphan*/  L2TP_CMD_TUNNEL_GET ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  NLM_F_ACK ; 
 struct net* FUNC0 (struct genl_info*) ; 
 int FUNC1 (struct net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct l2tp_tunnel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2tp_tunnel*) ; 
 struct l2tp_tunnel* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct genl_info *info)
{
	struct l2tp_tunnel *tunnel;
	struct sk_buff *msg;
	u32 tunnel_id;
	int ret = -ENOBUFS;
	struct net *net = FUNC0(info);

	if (!info->attrs[L2TP_ATTR_CONN_ID]) {
		ret = -EINVAL;
		goto err;
	}

	tunnel_id = FUNC5(info->attrs[L2TP_ATTR_CONN_ID]);

	msg = FUNC7(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto err;
	}

	tunnel = FUNC4(net, tunnel_id);
	if (!tunnel) {
		ret = -ENODEV;
		goto err_nlmsg;
	}

	ret = FUNC2(msg, info->snd_portid, info->snd_seq,
				  NLM_F_ACK, tunnel, L2TP_CMD_TUNNEL_GET);
	if (ret < 0)
		goto err_nlmsg_tunnel;

	FUNC3(tunnel);

	return FUNC1(net, msg, info->snd_portid);

err_nlmsg_tunnel:
	FUNC3(tunnel);
err_nlmsg:
	FUNC6(msg);
err:
	return ret;
}