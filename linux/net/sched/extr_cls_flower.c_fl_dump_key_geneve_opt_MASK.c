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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct geneve_opt {int length; int /*<<< orphan*/  opt_data; int /*<<< orphan*/  type; int /*<<< orphan*/  opt_class; } ;
struct flow_dissector_key_enc_opts {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_ENC_OPTS_GENEVE ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				  struct flow_dissector_key_enc_opts *enc_opts)
{
	struct geneve_opt *opt;
	struct nlattr *nest;
	int opt_off = 0;

	nest = FUNC2(skb, TCA_FLOWER_KEY_ENC_OPTS_GENEVE);
	if (!nest)
		goto nla_put_failure;

	while (enc_opts->len > opt_off) {
		opt = (struct geneve_opt *)&enc_opts->data[opt_off];

		if (FUNC4(skb, TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS,
				 opt->opt_class))
			goto nla_put_failure;
		if (FUNC5(skb, TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE,
			       opt->type))
			goto nla_put_failure;
		if (FUNC3(skb, TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA,
			    opt->length * 4, opt->opt_data))
			goto nla_put_failure;

		opt_off += sizeof(struct geneve_opt) + opt->length * 4;
	}
	FUNC1(skb, nest);
	return 0;

nla_put_failure:
	FUNC0(skb, nest);
	return -EMSGSIZE;
}