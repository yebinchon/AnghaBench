#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcf_result {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_bpf {int tcf_action; TYPE_1__ common; int /*<<< orphan*/  filter; int /*<<< orphan*/  tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mac_len; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_prog*,struct sk_buff*) ; 
#define  TC_ACT_OK 133 
#define  TC_ACT_PIPE 132 
#define  TC_ACT_RECLASSIFY 131 
#define  TC_ACT_REDIRECT 130 
#define  TC_ACT_SHOT 129 
#define  TC_ACT_UNSPEC 128 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct tcf_bpf* FUNC12 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, const struct tc_action *act,
		       struct tcf_result *res)
{
	bool at_ingress = FUNC9(skb);
	struct tcf_bpf *prog = FUNC12(act);
	struct bpf_prog *filter;
	int action, filter_res;

	FUNC10(&prog->tcf_tm);
	FUNC4(FUNC11(prog->common.cpu_bstats), skb);

	FUNC7();
	filter = FUNC6(prog->filter);
	if (at_ingress) {
		FUNC2(skb, skb->mac_len);
		FUNC3(skb);
		filter_res = FUNC0(filter, skb);
		FUNC1(skb, skb->mac_len);
	} else {
		FUNC3(skb);
		filter_res = FUNC0(filter, skb);
	}
	FUNC8();

	/* A BPF program may overwrite the default action opcode.
	 * Similarly as in cls_bpf, if filter_res == -1 we use the
	 * default action specified from tc.
	 *
	 * In case a different well-known TC_ACT opcode has been
	 * returned, it will overwrite the default one.
	 *
	 * For everything else that is unkown, TC_ACT_UNSPEC is
	 * returned.
	 */
	switch (filter_res) {
	case TC_ACT_PIPE:
	case TC_ACT_RECLASSIFY:
	case TC_ACT_OK:
	case TC_ACT_REDIRECT:
		action = filter_res;
		break;
	case TC_ACT_SHOT:
		action = filter_res;
		FUNC5(FUNC11(prog->common.cpu_qstats));
		break;
	case TC_ACT_UNSPEC:
		action = prog->tcf_action;
		break;
	default:
		action = TC_ACT_UNSPEC;
		break;
	}

	return action;
}