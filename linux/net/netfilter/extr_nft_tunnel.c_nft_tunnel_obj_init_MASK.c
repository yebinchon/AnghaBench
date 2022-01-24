#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nlattr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  u; } ;
struct nft_tunnel_obj {struct metadata_dst* md; TYPE_3__ opts; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dst_cache; } ;
struct TYPE_7__ {TYPE_4__ tun_info; } ;
struct metadata_dst {TYPE_2__ u; } ;
struct TYPE_6__ {int tun_flags; void* ttl; void* tos; void* tp_dst; void* tp_src; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {TYPE_1__ key; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IP_TUNNEL_INFO_TX ; 
 int /*<<< orphan*/  METADATA_IP_TUNNEL ; 
 size_t NFTA_TUNNEL_KEY_DPORT ; 
 size_t NFTA_TUNNEL_KEY_FLAGS ; 
 size_t NFTA_TUNNEL_KEY_ID ; 
 size_t NFTA_TUNNEL_KEY_IP ; 
 size_t NFTA_TUNNEL_KEY_IP6 ; 
 size_t NFTA_TUNNEL_KEY_OPTS ; 
 size_t NFTA_TUNNEL_KEY_SPORT ; 
 size_t NFTA_TUNNEL_KEY_TOS ; 
 size_t NFTA_TUNNEL_KEY_TTL ; 
 int NFT_TUNNEL_F_DONT_FRAGMENT ; 
 int NFT_TUNNEL_F_MASK ; 
 int NFT_TUNNEL_F_SEQ_NUMBER ; 
 int NFT_TUNNEL_F_ZERO_CSUM_TX ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_DONT_FRAGMENT ; 
 int TUNNEL_KEY ; 
 int TUNNEL_NOCACHE ; 
 int TUNNEL_SEQ ; 
 void* U8_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct ip_tunnel_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_tunnel_info*,int /*<<< orphan*/ ,int) ; 
 struct metadata_dst* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct metadata_dst*) ; 
 struct nft_tunnel_obj* FUNC7 (struct nft_object*) ; 
 int FUNC8 (struct nft_ctx const*,struct nlattr const* const,struct ip_tunnel_info*) ; 
 int FUNC9 (struct nft_ctx const*,struct nlattr const* const,struct ip_tunnel_info*) ; 
 int FUNC10 (struct nft_ctx const*,struct nlattr const* const,struct ip_tunnel_info*,TYPE_3__*) ; 
 void* FUNC11 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr const* const) ; 
 void* FUNC13 (struct nlattr const* const) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(const struct nft_ctx *ctx,
			       const struct nlattr * const tb[],
			       struct nft_object *obj)
{
	struct nft_tunnel_obj *priv = FUNC7(obj);
	struct ip_tunnel_info info;
	struct metadata_dst *md;
	int err;

	if (!tb[NFTA_TUNNEL_KEY_ID])
		return -EINVAL;

	FUNC4(&info, 0, sizeof(info));
	info.mode		= IP_TUNNEL_INFO_TX;
	info.key.tun_id		= FUNC2(FUNC12(tb[NFTA_TUNNEL_KEY_ID]));
	info.key.tun_flags	= TUNNEL_KEY | TUNNEL_CSUM | TUNNEL_NOCACHE;

	if (tb[NFTA_TUNNEL_KEY_IP]) {
		err = FUNC9(ctx, tb[NFTA_TUNNEL_KEY_IP], &info);
		if (err < 0)
			return err;
	} else if (tb[NFTA_TUNNEL_KEY_IP6]) {
		err = FUNC8(ctx, tb[NFTA_TUNNEL_KEY_IP6], &info);
		if (err < 0)
			return err;
	} else {
		return -EINVAL;
	}

	if (tb[NFTA_TUNNEL_KEY_SPORT]) {
		info.key.tp_src = FUNC11(tb[NFTA_TUNNEL_KEY_SPORT]);
	}
	if (tb[NFTA_TUNNEL_KEY_DPORT]) {
		info.key.tp_dst = FUNC11(tb[NFTA_TUNNEL_KEY_DPORT]);
	}

	if (tb[NFTA_TUNNEL_KEY_FLAGS]) {
		u32 tun_flags;

		tun_flags = FUNC14(FUNC12(tb[NFTA_TUNNEL_KEY_FLAGS]));
		if (tun_flags & ~NFT_TUNNEL_F_MASK)
			return -EOPNOTSUPP;

		if (tun_flags & NFT_TUNNEL_F_ZERO_CSUM_TX)
			info.key.tun_flags &= ~TUNNEL_CSUM;
		if (tun_flags & NFT_TUNNEL_F_DONT_FRAGMENT)
			info.key.tun_flags |= TUNNEL_DONT_FRAGMENT;
		if (tun_flags & NFT_TUNNEL_F_SEQ_NUMBER)
			info.key.tun_flags |= TUNNEL_SEQ;
	}
	if (tb[NFTA_TUNNEL_KEY_TOS])
		info.key.tos = FUNC13(tb[NFTA_TUNNEL_KEY_TOS]);
	if (tb[NFTA_TUNNEL_KEY_TTL])
		info.key.ttl = FUNC13(tb[NFTA_TUNNEL_KEY_TTL]);
	else
		info.key.ttl = U8_MAX;

	if (tb[NFTA_TUNNEL_KEY_OPTS]) {
		err = FUNC10(ctx, tb[NFTA_TUNNEL_KEY_OPTS],
					       &info, &priv->opts);
		if (err < 0)
			return err;
	}

	md = FUNC5(priv->opts.len, METADATA_IP_TUNNEL, GFP_KERNEL);
	if (!md)
		return -ENOMEM;

	FUNC3(&md->u.tun_info, &info, sizeof(info));
#ifdef CONFIG_DST_CACHE
	err = dst_cache_init(&md->u.tun_info.dst_cache, GFP_KERNEL);
	if (err < 0) {
		metadata_dst_free(md);
		return err;
	}
#endif
	FUNC1(&md->u.tun_info, &priv->opts.u, priv->opts.len,
				priv->opts.flags);
	priv->md = md;

	return 0;
}