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
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t L2TP_ATTR_CONN_ID ; 
 int /*<<< orphan*/  L2TP_CMD_TUNNEL_DELETE ; 
 struct net* FUNC0 (struct genl_info*) ; 
 int /*<<< orphan*/  l2tp_nl_family ; 
 int /*<<< orphan*/  FUNC1 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_tunnel*) ; 
 struct l2tp_tunnel* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct genl_info*,struct l2tp_tunnel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct l2tp_tunnel *tunnel;
	u32 tunnel_id;
	int ret = 0;
	struct net *net = FUNC0(info);

	if (!info->attrs[L2TP_ATTR_CONN_ID]) {
		ret = -EINVAL;
		goto out;
	}
	tunnel_id = FUNC5(info->attrs[L2TP_ATTR_CONN_ID]);

	tunnel = FUNC3(net, tunnel_id);
	if (!tunnel) {
		ret = -ENODEV;
		goto out;
	}

	FUNC4(&l2tp_nl_family, info,
			   tunnel, L2TP_CMD_TUNNEL_DELETE);

	FUNC2(tunnel);

	FUNC1(tunnel);

out:
	return ret;
}