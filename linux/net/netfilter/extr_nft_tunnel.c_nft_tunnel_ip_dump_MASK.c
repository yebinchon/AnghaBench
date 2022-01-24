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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_7__ {TYPE_2__ ipv4; TYPE_1__ ipv6; } ;
struct TYPE_8__ {TYPE_3__ u; int /*<<< orphan*/  label; } ;
struct ip_tunnel_info {int mode; TYPE_4__ key; } ;

/* Variables and functions */
 int IP_TUNNEL_INFO_IPV6 ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_IP ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_IP6 ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_IP6_DST ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_IP6_FLOWLABEL ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_IP6_SRC ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_IP_DST ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_IP_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct ip_tunnel_info *info)
{
	struct nlattr *nest;

	if (info->mode & IP_TUNNEL_INFO_IPV6) {
		nest = FUNC1(skb, NFTA_TUNNEL_KEY_IP6);
		if (!nest)
			return -1;

		if (FUNC3(skb, NFTA_TUNNEL_KEY_IP6_SRC, &info->key.u.ipv6.src) < 0 ||
		    FUNC3(skb, NFTA_TUNNEL_KEY_IP6_DST, &info->key.u.ipv6.dst) < 0 ||
		    FUNC2(skb, NFTA_TUNNEL_KEY_IP6_FLOWLABEL, info->key.label))
			return -1;

		FUNC0(skb, nest);
	} else {
		nest = FUNC1(skb, NFTA_TUNNEL_KEY_IP);
		if (!nest)
			return -1;

		if (FUNC4(skb, NFTA_TUNNEL_KEY_IP_SRC, info->key.u.ipv4.src) < 0 ||
		    FUNC4(skb, NFTA_TUNNEL_KEY_IP_DST, info->key.u.ipv4.dst) < 0)
			return -1;

		FUNC0(skb, nest);
	}

	return 0;
}