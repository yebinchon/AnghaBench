#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {void* src; void* dst; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;
struct TYPE_6__ {int /*<<< orphan*/  tun_flags; void* tos; void* ttl; TYPE_2__ u; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {scalar_t__ options_len; int /*<<< orphan*/  mode; TYPE_3__ key; int /*<<< orphan*/  dst_cache; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IP_TUNNEL_INFO_TX ; 
 int /*<<< orphan*/  LWTUNNEL_ENCAP_IP ; 
 size_t LWTUNNEL_IP_DST ; 
 size_t LWTUNNEL_IP_FLAGS ; 
 size_t LWTUNNEL_IP_ID ; 
 int /*<<< orphan*/  LWTUNNEL_IP_MAX ; 
 size_t LWTUNNEL_IP_SRC ; 
 size_t LWTUNNEL_IP_TOS ; 
 size_t LWTUNNEL_IP_TTL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_tun_policy ; 
 struct ip_tunnel_info* FUNC1 (struct lwtunnel_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct lwtunnel_state*) ; 
 struct lwtunnel_state* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 void* FUNC6 (struct nlattr*) ; 
 void* FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC9(struct nlattr *attr,
			      unsigned int family, const void *cfg,
			      struct lwtunnel_state **ts,
			      struct netlink_ext_ack *extack)
{
	struct ip_tunnel_info *tun_info;
	struct lwtunnel_state *new_state;
	struct nlattr *tb[LWTUNNEL_IP_MAX + 1];
	int err;

	err = FUNC8(tb, LWTUNNEL_IP_MAX, attr,
					  ip_tun_policy, extack);
	if (err < 0)
		return err;

	new_state = FUNC3(sizeof(*tun_info));
	if (!new_state)
		return -ENOMEM;

	new_state->type = LWTUNNEL_ENCAP_IP;

	tun_info = FUNC1(new_state);

#ifdef CONFIG_DST_CACHE
	err = dst_cache_init(&tun_info->dst_cache, GFP_KERNEL);
	if (err) {
		lwtstate_free(new_state);
		return err;
	}
#endif

	if (tb[LWTUNNEL_IP_ID])
		tun_info->key.tun_id = FUNC5(tb[LWTUNNEL_IP_ID]);

	if (tb[LWTUNNEL_IP_DST])
		tun_info->key.u.ipv4.dst = FUNC6(tb[LWTUNNEL_IP_DST]);

	if (tb[LWTUNNEL_IP_SRC])
		tun_info->key.u.ipv4.src = FUNC6(tb[LWTUNNEL_IP_SRC]);

	if (tb[LWTUNNEL_IP_TTL])
		tun_info->key.ttl = FUNC7(tb[LWTUNNEL_IP_TTL]);

	if (tb[LWTUNNEL_IP_TOS])
		tun_info->key.tos = FUNC7(tb[LWTUNNEL_IP_TOS]);

	if (tb[LWTUNNEL_IP_FLAGS])
		tun_info->key.tun_flags = FUNC4(tb[LWTUNNEL_IP_FLAGS]);

	tun_info->mode = IP_TUNNEL_INFO_TX;
	tun_info->options_len = 0;

	*ts = new_state;

	return 0;
}