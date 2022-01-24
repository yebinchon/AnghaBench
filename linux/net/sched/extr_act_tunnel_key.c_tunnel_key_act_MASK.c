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
struct tcf_tunnel_key_params {int tcft_action; TYPE_2__* tcft_enc_metadata; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_tunnel_key {int /*<<< orphan*/  tcf_action; TYPE_1__ common; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  params; } ;
struct tcf_result {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TCA_TUNNEL_KEY_ACT_RELEASE 129 
#define  TCA_TUNNEL_KEY_ACT_SET 128 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tcf_tunnel_key_params* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct tcf_tunnel_key* FUNC9 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, const struct tc_action *a,
			  struct tcf_result *res)
{
	struct tcf_tunnel_key *t = FUNC9(a);
	struct tcf_tunnel_key_params *params;
	int action;

	params = FUNC4(t->params);

	FUNC7(&t->tcf_tm);
	FUNC2(FUNC8(t->common.cpu_bstats), skb);
	action = FUNC0(t->tcf_action);

	switch (params->tcft_action) {
	case TCA_TUNNEL_KEY_ACT_RELEASE:
		FUNC5(skb);
		break;
	case TCA_TUNNEL_KEY_ACT_SET:
		FUNC5(skb);
		FUNC6(skb, FUNC3(&params->tcft_enc_metadata->dst));
		break;
	default:
		FUNC1(1, "Bad tunnel_key action %d.\n",
			  params->tcft_action);
		break;
	}

	return action;
}