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
struct flow_dissector_key_enc_opts {int dst_opt_type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EMSGSIZE ; 
#define  TUNNEL_GENEVE_OPT 128 
 int FUNC0 (struct sk_buff*,struct flow_dissector_key_enc_opts*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, int enc_opt_type,
			       struct flow_dissector_key_enc_opts *enc_opts)
{
	struct nlattr *nest;
	int err;

	if (!enc_opts->len)
		return 0;

	nest = FUNC3(skb, enc_opt_type);
	if (!nest)
		goto nla_put_failure;

	switch (enc_opts->dst_opt_type) {
	case TUNNEL_GENEVE_OPT:
		err = FUNC0(skb, enc_opts);
		if (err)
			goto nla_put_failure;
		break;
	default:
		goto nla_put_failure;
	}
	FUNC2(skb, nest);
	return 0;

nla_put_failure:
	FUNC1(skb, nest);
	return -EMSGSIZE;
}