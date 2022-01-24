#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nft_tunnel_obj {TYPE_3__* md; } ;
struct nft_object {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;
struct TYPE_5__ {struct ip_tunnel_info tun_info; } ;
struct TYPE_6__ {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_ID ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_TOS ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_TTL ; 
 struct nft_tunnel_obj* FUNC0 (struct nft_object*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct ip_tunnel_info*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct ip_tunnel_info*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct nft_tunnel_obj*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct ip_tunnel_info*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
			       struct nft_object *obj, bool reset)
{
	struct nft_tunnel_obj *priv = FUNC0(obj);
	struct ip_tunnel_info *info = &priv->md->u.tun_info;

	if (FUNC5(skb, NFTA_TUNNEL_KEY_ID,
			 FUNC7(info->key.tun_id)) ||
	    FUNC2(skb, info) < 0 ||
	    FUNC4(skb, info) < 0 ||
	    FUNC1(skb, info) < 0 ||
	    FUNC6(skb, NFTA_TUNNEL_KEY_TOS, info->key.tos) ||
	    FUNC6(skb, NFTA_TUNNEL_KEY_TTL, info->key.ttl) ||
	    FUNC3(skb, priv) < 0)
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}