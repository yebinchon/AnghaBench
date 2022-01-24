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
struct iphdr {int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct flow_dissector_key_ip {int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct flow_dissector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IP ; 
 int /*<<< orphan*/  FUNC0 (struct flow_dissector*,int /*<<< orphan*/ ) ; 
 struct flow_dissector_key_ip* FUNC1 (struct flow_dissector*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC2(const struct sk_buff *skb,
			struct flow_dissector *flow_dissector,
			void *target_container, void *data, const struct iphdr *iph)
{
	struct flow_dissector_key_ip *key_ip;

	if (!FUNC0(flow_dissector, FLOW_DISSECTOR_KEY_IP))
		return;

	key_ip = FUNC1(flow_dissector,
					   FLOW_DISSECTOR_KEY_IP,
					   target_container);
	key_ip->tos = iph->tos;
	key_ip->ttl = iph->ttl;
}