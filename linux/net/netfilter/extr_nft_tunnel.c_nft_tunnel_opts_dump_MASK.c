#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dir; } ;
struct TYPE_7__ {TYPE_5__ md2; int /*<<< orphan*/  index; } ;
struct TYPE_8__ {int version; TYPE_2__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  gbp; } ;
struct TYPE_9__ {TYPE_3__ erspan; TYPE_1__ vxlan; } ;
struct nft_tunnel_opts {int flags; TYPE_4__ u; } ;
struct nft_tunnel_obj {struct nft_tunnel_opts opts; } ;

/* Variables and functions */
#define  ERSPAN_VERSION 129 
#define  ERSPAN_VERSION2 128 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_ERSPAN_V2_DIR ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_ERSPAN_V2_HWID ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_OPTS ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_VXLAN_GBP ; 
 int TUNNEL_ERSPAN_OPT ; 
 int TUNNEL_VXLAN_OPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				struct nft_tunnel_obj *priv)
{
	struct nft_tunnel_opts *opts = &priv->opts;
	struct nlattr *nest;

	nest = FUNC3(skb, NFTA_TUNNEL_KEY_OPTS);
	if (!nest)
		return -1;

	if (opts->flags & TUNNEL_VXLAN_OPT) {
		if (FUNC4(skb, NFTA_TUNNEL_KEY_VXLAN_GBP,
				 FUNC1(opts->u.vxlan.gbp)))
			return -1;
	} else if (opts->flags & TUNNEL_ERSPAN_OPT) {
		switch (opts->u.erspan.version) {
		case ERSPAN_VERSION:
			if (FUNC4(skb, NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX,
					 opts->u.erspan.u.index))
				return -1;
			break;
		case ERSPAN_VERSION2:
			if (FUNC5(skb, NFTA_TUNNEL_KEY_ERSPAN_V2_HWID,
				       FUNC0(&opts->u.erspan.u.md2)) ||
			    FUNC5(skb, NFTA_TUNNEL_KEY_ERSPAN_V2_DIR,
				       opts->u.erspan.u.md2.dir))
				return -1;
			break;
		}
	}
	FUNC2(skb, nest);

	return 0;
}