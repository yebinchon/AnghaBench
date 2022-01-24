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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int tun_flags; } ;
struct ip_tunnel_info {TYPE_1__ key; int /*<<< orphan*/  options_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_TUNNEL_KEY_ENC_OPTS ; 
 int TUNNEL_GENEVE_OPT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct ip_tunnel_info const*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				const struct ip_tunnel_info *info)
{
	struct nlattr *start;
	int err = -EINVAL;

	if (!info->options_len)
		return 0;

	start = FUNC2(skb, TCA_TUNNEL_KEY_ENC_OPTS);
	if (!start)
		return -EMSGSIZE;

	if (info->key.tun_flags & TUNNEL_GENEVE_OPT) {
		err = FUNC3(skb, info);
		if (err)
			goto err_out;
	} else {
err_out:
		FUNC0(skb, start);
		return err;
	}

	FUNC1(skb, start);
	return 0;
}