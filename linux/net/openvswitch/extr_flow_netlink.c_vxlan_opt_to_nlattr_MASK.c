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
struct vxlan_metadata {int /*<<< orphan*/  gbp; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_VXLAN_OPTS ; 
 int /*<<< orphan*/  OVS_VXLAN_EXT_GBP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
			       const void *tun_opts, int swkey_tun_opts_len)
{
	const struct vxlan_metadata *opts = tun_opts;
	struct nlattr *nla;

	nla = FUNC1(skb, OVS_TUNNEL_KEY_ATTR_VXLAN_OPTS);
	if (!nla)
		return -EMSGSIZE;

	if (FUNC2(skb, OVS_VXLAN_EXT_GBP, opts->gbp) < 0)
		return -EMSGSIZE;

	FUNC0(skb, nla);
	return 0;
}