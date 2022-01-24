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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tcf_tunnel_key_params {int tcft_action; struct metadata_dst* tcft_enc_metadata; } ;
struct tcf_tunnel_key {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  params; } ;
struct tcf_proto {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tc_tunnel_key {int t_action; int /*<<< orphan*/  action; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  dst_cache; } ;
struct TYPE_3__ {TYPE_2__ tun_info; } ;
struct metadata_dst {int /*<<< orphan*/  dst; TYPE_1__ u; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IP_TUNNEL_INFO_TX ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
#define  TCA_TUNNEL_KEY_ACT_RELEASE 129 
#define  TCA_TUNNEL_KEY_ACT_SET 128 
 size_t TCA_TUNNEL_KEY_ENC_DST_PORT ; 
 size_t TCA_TUNNEL_KEY_ENC_IPV4_DST ; 
 size_t TCA_TUNNEL_KEY_ENC_IPV4_SRC ; 
 size_t TCA_TUNNEL_KEY_ENC_IPV6_DST ; 
 size_t TCA_TUNNEL_KEY_ENC_IPV6_SRC ; 
 size_t TCA_TUNNEL_KEY_ENC_KEY_ID ; 
 size_t TCA_TUNNEL_KEY_ENC_OPTS ; 
 size_t TCA_TUNNEL_KEY_ENC_TOS ; 
 size_t TCA_TUNNEL_KEY_ENC_TTL ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_MAX ; 
 size_t TCA_TUNNEL_KEY_NO_CSUM ; 
 size_t TCA_TUNNEL_KEY_PARMS ; 
 int /*<<< orphan*/  TUNNEL_CSUM ; 
 int /*<<< orphan*/  TUNNEL_KEY ; 
 struct metadata_dst* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct metadata_dst* FUNC2 (struct in6_addr*,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  act_tunnel_key_ops ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct tcf_tunnel_key_params* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct tc_action_net* FUNC8 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_tunnel_key* FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr*) ; 
 struct in6_addr FUNC12 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC13 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC14 (struct nlattr*) ; 
 int FUNC15 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct tcf_tunnel_key_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC20 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC21 (struct tcf_chain*) ; 
 int FUNC22 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC23 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct tc_action_net*,int /*<<< orphan*/ ,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC26 (struct tc_action*,int) ; 
 struct tcf_tunnel_key* FUNC27 (struct tc_action*) ; 
 int FUNC28 (struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  tunnel_key_net_id ; 
 int FUNC29 (struct nlattr*,TYPE_2__*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  tunnel_key_policy ; 
 int /*<<< orphan*/  FUNC30 (struct tcf_tunnel_key_params*) ; 
 scalar_t__ FUNC31 (int) ; 

__attribute__((used)) static int FUNC32(struct net *net, struct nlattr *nla,
			   struct nlattr *est, struct tc_action **a,
			   int ovr, int bind, bool rtnl_held,
			   struct tcf_proto *tp,
			   struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC8(net, tunnel_key_net_id);
	struct nlattr *tb[TCA_TUNNEL_KEY_MAX + 1];
	struct tcf_tunnel_key_params *params_new;
	struct metadata_dst *metadata = NULL;
	struct tcf_chain *goto_ch = NULL;
	struct tc_tunnel_key *parm;
	struct tcf_tunnel_key *t;
	bool exists = false;
	__be16 dst_port = 0;
	__be64 key_id = 0;
	int opts_len = 0;
	__be16 flags = 0;
	u8 tos, ttl;
	int ret = 0;
	u32 index;
	int err;

	if (!nla) {
		FUNC0(extack, "Tunnel requires attributes to be passed");
		return -EINVAL;
	}

	err = FUNC15(tb, TCA_TUNNEL_KEY_MAX, nla,
					  tunnel_key_policy, extack);
	if (err < 0) {
		FUNC0(extack, "Failed to parse nested tunnel key attributes");
		return err;
	}

	if (!tb[TCA_TUNNEL_KEY_PARMS]) {
		FUNC0(extack, "Missing tunnel key parameters");
		return -EINVAL;
	}

	parm = FUNC9(tb[TCA_TUNNEL_KEY_PARMS]);
	index = parm->index;
	err = FUNC22(tn, &index, a, bind);
	if (err < 0)
		return err;
	exists = err;
	if (exists && bind)
		return 0;

	switch (parm->t_action) {
	case TCA_TUNNEL_KEY_ACT_RELEASE:
		break;
	case TCA_TUNNEL_KEY_ACT_SET:
		if (tb[TCA_TUNNEL_KEY_ENC_KEY_ID]) {
			__be32 key32;

			key32 = FUNC11(tb[TCA_TUNNEL_KEY_ENC_KEY_ID]);
			key_id = FUNC5(key32);
			flags = TUNNEL_KEY;
		}

		flags |= TUNNEL_CSUM;
		if (tb[TCA_TUNNEL_KEY_NO_CSUM] &&
		    FUNC14(tb[TCA_TUNNEL_KEY_NO_CSUM]))
			flags &= ~TUNNEL_CSUM;

		if (tb[TCA_TUNNEL_KEY_ENC_DST_PORT])
			dst_port = FUNC10(tb[TCA_TUNNEL_KEY_ENC_DST_PORT]);

		if (tb[TCA_TUNNEL_KEY_ENC_OPTS]) {
			opts_len = FUNC28(tb[TCA_TUNNEL_KEY_ENC_OPTS],
							   extack);
			if (opts_len < 0) {
				ret = opts_len;
				goto err_out;
			}
		}

		tos = 0;
		if (tb[TCA_TUNNEL_KEY_ENC_TOS])
			tos = FUNC14(tb[TCA_TUNNEL_KEY_ENC_TOS]);
		ttl = 0;
		if (tb[TCA_TUNNEL_KEY_ENC_TTL])
			ttl = FUNC14(tb[TCA_TUNNEL_KEY_ENC_TTL]);

		if (tb[TCA_TUNNEL_KEY_ENC_IPV4_SRC] &&
		    tb[TCA_TUNNEL_KEY_ENC_IPV4_DST]) {
			__be32 saddr;
			__be32 daddr;

			saddr = FUNC13(tb[TCA_TUNNEL_KEY_ENC_IPV4_SRC]);
			daddr = FUNC13(tb[TCA_TUNNEL_KEY_ENC_IPV4_DST]);

			metadata = FUNC1(saddr, daddr, tos, ttl,
						    dst_port, flags,
						    key_id, opts_len);
		} else if (tb[TCA_TUNNEL_KEY_ENC_IPV6_SRC] &&
			   tb[TCA_TUNNEL_KEY_ENC_IPV6_DST]) {
			struct in6_addr saddr;
			struct in6_addr daddr;

			saddr = FUNC12(tb[TCA_TUNNEL_KEY_ENC_IPV6_SRC]);
			daddr = FUNC12(tb[TCA_TUNNEL_KEY_ENC_IPV6_DST]);

			metadata = FUNC2(&saddr, &daddr, tos, ttl, dst_port,
						      0, flags,
						      key_id, 0);
		} else {
			FUNC0(extack, "Missing either ipv4 or ipv6 src and dst");
			ret = -EINVAL;
			goto err_out;
		}

		if (!metadata) {
			FUNC0(extack, "Cannot allocate tunnel metadata dst");
			ret = -ENOMEM;
			goto err_out;
		}

#ifdef CONFIG_DST_CACHE
		ret = dst_cache_init(&metadata->u.tun_info.dst_cache, GFP_KERNEL);
		if (ret)
			goto release_tun_meta;
#endif

		if (opts_len) {
			ret = FUNC29(tb[TCA_TUNNEL_KEY_ENC_OPTS],
						  &metadata->u.tun_info,
						  opts_len, extack);
			if (ret < 0)
				goto release_tun_meta;
		}

		metadata->u.tun_info.mode |= IP_TUNNEL_INFO_TX;
		break;
	default:
		FUNC0(extack, "Unknown tunnel key action");
		ret = -EINVAL;
		goto err_out;
	}

	if (!exists) {
		ret = FUNC24(tn, index, est, a,
				     &act_tunnel_key_ops, bind, true);
		if (ret) {
			FUNC0(extack, "Cannot create TC IDR");
			goto release_tun_meta;
		}

		ret = ACT_P_CREATED;
	} else if (!ovr) {
		FUNC0(extack, "TC IDR already exists");
		ret = -EEXIST;
		goto release_tun_meta;
	}

	err = FUNC19(parm->action, tp, &goto_ch, extack);
	if (err < 0) {
		ret = err;
		exists = true;
		goto release_tun_meta;
	}
	t = FUNC27(*a);

	params_new = FUNC6(sizeof(*params_new), GFP_KERNEL);
	if (FUNC31(!params_new)) {
		FUNC0(extack, "Cannot allocate tunnel key parameters");
		ret = -ENOMEM;
		exists = true;
		goto put_chain;
	}
	params_new->tcft_action = parm->t_action;
	params_new->tcft_enc_metadata = metadata;

	FUNC17(&t->tcf_lock);
	goto_ch = FUNC20(*a, parm->action, goto_ch);
	FUNC16(t->params, params_new,
			   FUNC7(&t->tcf_lock));
	FUNC18(&t->tcf_lock);
	FUNC30(params_new);
	if (goto_ch)
		FUNC21(goto_ch);

	if (ret == ACT_P_CREATED)
		FUNC25(tn, *a);

	return ret;

put_chain:
	if (goto_ch)
		FUNC21(goto_ch);

release_tun_meta:
	if (metadata)
		FUNC4(&metadata->dst);

err_out:
	if (exists)
		FUNC26(*a, bind);
	else
		FUNC23(tn, index);
	return ret;
}