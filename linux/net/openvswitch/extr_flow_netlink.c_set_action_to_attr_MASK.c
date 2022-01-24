#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ovs_tunnel_info {TYPE_1__* tun_dst; } ;
struct nlattr {int dummy; } ;
struct ip_tunnel_info {int /*<<< orphan*/  mode; int /*<<< orphan*/  options_len; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {struct ip_tunnel_info tun_info; } ;
struct TYPE_3__ {TYPE_2__ u; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_ACTION_ATTR_SET ; 
#define  OVS_KEY_ATTR_TUNNEL_INFO 128 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_tunnel_info*) ; 
 void* FUNC3 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr const*) ; 
 int FUNC8 (struct nlattr const*) ; 

__attribute__((used)) static int FUNC9(const struct nlattr *a, struct sk_buff *skb)
{
	const struct nlattr *ovs_key = FUNC3(a);
	int key_type = FUNC8(ovs_key);
	struct nlattr *start;
	int err;

	switch (key_type) {
	case OVS_KEY_ATTR_TUNNEL_INFO: {
		struct ovs_tunnel_info *ovs_tun = FUNC3(ovs_key);
		struct ip_tunnel_info *tun_info = &ovs_tun->tun_dst->u.tun_info;

		start = FUNC6(skb, OVS_ACTION_ATTR_SET);
		if (!start)
			return -EMSGSIZE;

		err =  FUNC0(skb, &tun_info->key,
					FUNC2(tun_info),
					tun_info->options_len,
					FUNC1(tun_info), tun_info->mode);
		if (err)
			return err;
		FUNC5(skb, start);
		break;
	}
	default:
		if (FUNC7(skb, OVS_ACTION_ATTR_SET, FUNC4(a), ovs_key))
			return -EMSGSIZE;
		break;
	}

	return 0;
}