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
typedef  int /*<<< orphan*/  tm ;
struct tcf_tunnel_key_params {scalar_t__ tcft_action; TYPE_2__* tcft_enc_metadata; } ;
struct tcf_tunnel_key {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  params; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tcf_t {int dummy; } ;
struct tc_tunnel_key {scalar_t__ t_action; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct ip_tunnel_key {int tun_flags; int tos; int ttl; scalar_t__ tp_dst; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; } ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {struct ip_tunnel_info tun_info; } ;
struct TYPE_4__ {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ TCA_TUNNEL_KEY_ACT_SET ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_DST_PORT ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_KEY_ID ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_TOS ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_TTL ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_NO_CSUM ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_PAD ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_PARMS ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_TM ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_tunnel_key*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned char*) ; 
 struct tcf_tunnel_key_params* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_tunnel_key* FUNC14 (struct tc_action*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,struct ip_tunnel_info*) ; 
 scalar_t__ FUNC17 (struct sk_buff*,struct ip_tunnel_info*) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct tc_action *a,
			   int bind, int ref)
{
	unsigned char *b = FUNC10(skb);
	struct tcf_tunnel_key *t = FUNC14(a);
	struct tcf_tunnel_key_params *params;
	struct tc_tunnel_key opt = {
		.index    = t->tcf_index,
		.refcnt   = FUNC9(&t->tcf_refcnt) - ref,
		.bindcnt  = FUNC0(&t->tcf_bindcnt) - bind,
	};
	struct tcf_t tm;

	FUNC11(&t->tcf_lock);
	params = FUNC8(t->params,
					   FUNC1(&t->tcf_lock));
	opt.action   = t->tcf_action;
	opt.t_action = params->tcft_action;

	if (FUNC2(skb, TCA_TUNNEL_KEY_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	if (params->tcft_action == TCA_TUNNEL_KEY_ACT_SET) {
		struct ip_tunnel_info *info =
			&params->tcft_enc_metadata->u.tun_info;
		struct ip_tunnel_key *key = &info->key;
		__be32 key_id = FUNC15(key->tun_id);

		if (((key->tun_flags & TUNNEL_KEY) &&
		     FUNC5(skb, TCA_TUNNEL_KEY_ENC_KEY_ID, key_id)) ||
		    FUNC16(skb,
					      &params->tcft_enc_metadata->u.tun_info) ||
		    (key->tp_dst &&
		      FUNC4(skb, TCA_TUNNEL_KEY_ENC_DST_PORT,
				   key->tp_dst)) ||
		    FUNC6(skb, TCA_TUNNEL_KEY_NO_CSUM,
			       !(key->tun_flags & TUNNEL_CSUM)) ||
		    FUNC17(skb, info))
			goto nla_put_failure;

		if (key->tos && FUNC6(skb, TCA_TUNNEL_KEY_ENC_TOS, key->tos))
			goto nla_put_failure;

		if (key->ttl && FUNC6(skb, TCA_TUNNEL_KEY_ENC_TTL, key->ttl))
			goto nla_put_failure;
	}

	FUNC13(&tm, &t->tcf_tm);
	if (FUNC3(skb, TCA_TUNNEL_KEY_TM, sizeof(tm),
			  &tm, TCA_TUNNEL_KEY_PAD))
		goto nla_put_failure;
	FUNC12(&t->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC12(&t->tcf_lock);
	FUNC7(skb, b);
	return -1;
}