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
struct nlattr {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int family; int /*<<< orphan*/  net; } ;
struct nft_ct_helper_obj {struct nf_conntrack_helper* helper6; struct nf_conntrack_helper* helper4; int /*<<< orphan*/  l4proto; } ;
struct nf_conntrack_helper {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOENT ; 
#define  NFPROTO_BRIDGE 132 
#define  NFPROTO_INET 131 
#define  NFPROTO_IPV4 130 
#define  NFPROTO_IPV6 129 
#define  NFPROTO_NETDEV 128 
 size_t NFTA_CT_HELPER_L3PROTO ; 
 size_t NFTA_CT_HELPER_L4PROTO ; 
 size_t NFTA_CT_HELPER_NAME ; 
 int NF_CT_HELPER_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_helper*) ; 
 struct nf_conntrack_helper* FUNC1 (char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const) ; 
 struct nft_ct_helper_obj* FUNC3 (struct nft_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct nlattr const* const,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct nft_ctx *ctx,
				  const struct nlattr * const tb[],
				  struct nft_object *obj)
{
	struct nft_ct_helper_obj *priv = FUNC3(obj);
	struct nf_conntrack_helper *help4, *help6;
	char name[NF_CT_HELPER_NAME_LEN];
	int family = ctx->family;
	int err;

	if (!tb[NFTA_CT_HELPER_NAME] || !tb[NFTA_CT_HELPER_L4PROTO])
		return -EINVAL;

	priv->l4proto = FUNC5(tb[NFTA_CT_HELPER_L4PROTO]);
	if (!priv->l4proto)
		return -ENOENT;

	FUNC6(name, tb[NFTA_CT_HELPER_NAME], sizeof(name));

	if (tb[NFTA_CT_HELPER_L3PROTO])
		family = FUNC7(FUNC4(tb[NFTA_CT_HELPER_L3PROTO]));

	help4 = NULL;
	help6 = NULL;

	switch (family) {
	case NFPROTO_IPV4:
		if (ctx->family == NFPROTO_IPV6)
			return -EINVAL;

		help4 = FUNC1(name, family,
							   priv->l4proto);
		break;
	case NFPROTO_IPV6:
		if (ctx->family == NFPROTO_IPV4)
			return -EINVAL;

		help6 = FUNC1(name, family,
							   priv->l4proto);
		break;
	case NFPROTO_NETDEV: /* fallthrough */
	case NFPROTO_BRIDGE: /* same */
	case NFPROTO_INET:
		help4 = FUNC1(name, NFPROTO_IPV4,
							   priv->l4proto);
		help6 = FUNC1(name, NFPROTO_IPV6,
							   priv->l4proto);
		break;
	default:
		return -EAFNOSUPPORT;
	}

	/* && is intentional; only error if INET found neither ipv4 or ipv6 */
	if (!help4 && !help6)
		return -ENOENT;

	priv->helper4 = help4;
	priv->helper6 = help6;

	err = FUNC2(ctx->net, ctx->family);
	if (err < 0)
		goto err_put_helper;

	return 0;

err_put_helper:
	if (priv->helper4)
		FUNC0(priv->helper4);
	if (priv->helper6)
		FUNC0(priv->helper6);
	return err;
}