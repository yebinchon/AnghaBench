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
struct nft_regs {int dummy; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct nft_object {int dummy; } ;
struct nft_ct_helper_obj {scalar_t__ l4proto; struct nf_conntrack_helper* helper6; struct nf_conntrack_helper* helper4; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPS_HELPER_BIT ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nf_conn_help* FUNC1 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct nf_conn*) ; 
 int FUNC4 (struct nf_conn*) ; 
 scalar_t__ FUNC5 (struct nf_conn*) ; 
 struct nft_ct_helper_obj* FUNC6 (struct nft_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct nf_conntrack_helper*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct nft_object *obj,
				   struct nft_regs *regs,
				   const struct nft_pktinfo *pkt)
{
	const struct nft_ct_helper_obj *priv = FUNC6(obj);
	struct nf_conn *ct = (struct nf_conn *)FUNC9(pkt->skb);
	struct nf_conntrack_helper *to_assign = NULL;
	struct nf_conn_help *help;

	if (!ct ||
	    FUNC2(ct) ||
	    FUNC3(ct) ||
	    priv->l4proto != FUNC5(ct))
		return;

	switch (FUNC4(ct)) {
	case NFPROTO_IPV4:
		to_assign = priv->helper4;
		break;
	case NFPROTO_IPV6:
		to_assign = priv->helper6;
		break;
	default:
		FUNC0(1);
		return;
	}

	if (!to_assign)
		return;

	if (FUNC10(IPS_HELPER_BIT, &ct->status))
		return;

	help = FUNC1(ct, GFP_ATOMIC);
	if (help) {
		FUNC7(help->helper, to_assign);
		FUNC8(IPS_HELPER_BIT, &ct->status);
	}
}