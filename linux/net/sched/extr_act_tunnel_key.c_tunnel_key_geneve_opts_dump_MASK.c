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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_tunnel_info {int options_len; } ;
struct geneve_opt {int length; int /*<<< orphan*/  type; int /*<<< orphan*/  opt_class; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_OPTS_GENEVE ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_OPT_GENEVE_CLASS ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_OPT_GENEVE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct geneve_opt*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				       const struct ip_tunnel_info *info)
{
	int len = info->options_len;
	u8 *src = (u8 *)(info + 1);
	struct nlattr *start;

	start = FUNC2(skb, TCA_TUNNEL_KEY_ENC_OPTS_GENEVE);
	if (!start)
		return -EMSGSIZE;

	while (len > 0) {
		struct geneve_opt *opt = (struct geneve_opt *)src;

		if (FUNC4(skb, TCA_TUNNEL_KEY_ENC_OPT_GENEVE_CLASS,
				 opt->opt_class) ||
		    FUNC5(skb, TCA_TUNNEL_KEY_ENC_OPT_GENEVE_TYPE,
			       opt->type) ||
		    FUNC3(skb, TCA_TUNNEL_KEY_ENC_OPT_GENEVE_DATA,
			    opt->length * 4, opt + 1)) {
			FUNC0(skb, start);
			return -EMSGSIZE;
		}

		len -= sizeof(struct geneve_opt) + opt->length * 4;
		src += sizeof(struct geneve_opt) + opt->length * 4;
	}

	FUNC1(skb, start);
	return 0;
}