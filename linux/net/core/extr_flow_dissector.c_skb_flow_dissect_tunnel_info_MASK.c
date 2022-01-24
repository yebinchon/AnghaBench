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
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_6__ {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct ip_tunnel_key {int tun_flags; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  tp_dst; int /*<<< orphan*/  tp_src; int /*<<< orphan*/  tun_id; TYPE_3__ u; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; scalar_t__ options_len; } ;
struct flow_dissector_key_ports {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct flow_dissector_key_keyid {int /*<<< orphan*/  keyid; } ;
struct flow_dissector_key_ipv6_addrs {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct flow_dissector_key_ipv4_addrs {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct flow_dissector_key_ip {int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct flow_dissector_key_enc_opts {int dst_opt_type; int /*<<< orphan*/  data; scalar_t__ len; } ;
struct flow_dissector {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_CONTROL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_IP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_OPTS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_PORTS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV4_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 int TUNNEL_OPTIONS_PRESENT ; 
 scalar_t__ FUNC0 (struct flow_dissector*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct flow_dissector*,void*) ; 
 void* FUNC4 (struct flow_dissector*,int /*<<< orphan*/ ,void*) ; 
 struct ip_tunnel_info* FUNC5 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(const struct sk_buff *skb,
			     struct flow_dissector *flow_dissector,
			     void *target_container)
{
	struct ip_tunnel_info *info;
	struct ip_tunnel_key *key;

	/* A quick check to see if there might be something to do. */
	if (!FUNC0(flow_dissector,
				FLOW_DISSECTOR_KEY_ENC_KEYID) &&
	    !FUNC0(flow_dissector,
				FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) &&
	    !FUNC0(flow_dissector,
				FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) &&
	    !FUNC0(flow_dissector,
				FLOW_DISSECTOR_KEY_ENC_CONTROL) &&
	    !FUNC0(flow_dissector,
				FLOW_DISSECTOR_KEY_ENC_PORTS) &&
	    !FUNC0(flow_dissector,
				FLOW_DISSECTOR_KEY_ENC_IP) &&
	    !FUNC0(flow_dissector,
				FLOW_DISSECTOR_KEY_ENC_OPTS))
		return;

	info = FUNC5(skb);
	if (!info)
		return;

	key = &info->key;

	switch (FUNC1(info)) {
	case AF_INET:
		FUNC3(FLOW_DISSECTOR_KEY_IPV4_ADDRS,
						   flow_dissector,
						   target_container);
		if (FUNC0(flow_dissector,
				       FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS)) {
			struct flow_dissector_key_ipv4_addrs *ipv4;

			ipv4 = FUNC4(flow_dissector,
							 FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS,
							 target_container);
			ipv4->src = key->u.ipv4.src;
			ipv4->dst = key->u.ipv4.dst;
		}
		break;
	case AF_INET6:
		FUNC3(FLOW_DISSECTOR_KEY_IPV6_ADDRS,
						   flow_dissector,
						   target_container);
		if (FUNC0(flow_dissector,
				       FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS)) {
			struct flow_dissector_key_ipv6_addrs *ipv6;

			ipv6 = FUNC4(flow_dissector,
							 FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS,
							 target_container);
			ipv6->src = key->u.ipv6.src;
			ipv6->dst = key->u.ipv6.dst;
		}
		break;
	}

	if (FUNC0(flow_dissector, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
		struct flow_dissector_key_keyid *keyid;

		keyid = FUNC4(flow_dissector,
						  FLOW_DISSECTOR_KEY_ENC_KEYID,
						  target_container);
		keyid->keyid = FUNC6(key->tun_id);
	}

	if (FUNC0(flow_dissector, FLOW_DISSECTOR_KEY_ENC_PORTS)) {
		struct flow_dissector_key_ports *tp;

		tp = FUNC4(flow_dissector,
					       FLOW_DISSECTOR_KEY_ENC_PORTS,
					       target_container);
		tp->src = key->tp_src;
		tp->dst = key->tp_dst;
	}

	if (FUNC0(flow_dissector, FLOW_DISSECTOR_KEY_ENC_IP)) {
		struct flow_dissector_key_ip *ip;

		ip = FUNC4(flow_dissector,
					       FLOW_DISSECTOR_KEY_ENC_IP,
					       target_container);
		ip->tos = key->tos;
		ip->ttl = key->ttl;
	}

	if (FUNC0(flow_dissector, FLOW_DISSECTOR_KEY_ENC_OPTS)) {
		struct flow_dissector_key_enc_opts *enc_opt;

		enc_opt = FUNC4(flow_dissector,
						    FLOW_DISSECTOR_KEY_ENC_OPTS,
						    target_container);

		if (info->options_len) {
			enc_opt->len = info->options_len;
			FUNC2(enc_opt->data, info);
			enc_opt->dst_opt_type = info->key.tun_flags &
						TUNNEL_OPTIONS_PRESENT;
		}
	}
}