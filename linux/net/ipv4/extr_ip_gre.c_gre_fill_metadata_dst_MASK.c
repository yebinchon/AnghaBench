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
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct rtable {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;
struct ip_tunnel_key {TYPE_2__ u; int /*<<< orphan*/  tos; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; } ;
struct flowi4 {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct rtable* FUNC3 (int /*<<< orphan*/ ,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtable*) ; 
 scalar_t__ FUNC5 (struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct ip_tunnel_info* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, struct sk_buff *skb)
{
	struct ip_tunnel_info *info = FUNC8(skb);
	const struct ip_tunnel_key *key;
	struct rtable *rt;
	struct flowi4 fl4;

	if (FUNC5(info) != AF_INET)
		return -EINVAL;

	key = &info->key;
	FUNC6(&fl4, IPPROTO_GRE, key->u.ipv4.dst, key->u.ipv4.src,
			    FUNC9(key->tun_id), key->tos, 0,
			    skb->mark, FUNC7(skb));
	rt = FUNC3(FUNC2(dev), &fl4);
	if (FUNC0(rt))
		return FUNC1(rt);

	FUNC4(rt);
	info->key.u.ipv4.src = fl4.saddr;
	return 0;
}