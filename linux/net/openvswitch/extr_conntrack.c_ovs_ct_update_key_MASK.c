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
typedef  int u8 ;
struct sw_flow_key {int ct_state; } ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct ovs_conntrack_info {struct nf_conntrack_zone zone; } ;
struct nf_conn {int status; scalar_t__ master; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int IPS_DST_NAT ; 
 int IPS_SRC_NAT ; 
 int OVS_CS_F_DST_NAT ; 
 int OVS_CS_F_INVALID ; 
 int OVS_CS_F_NAT_MASK ; 
 int OVS_CS_F_NEW ; 
 int OVS_CS_F_RELATED ; 
 int OVS_CS_F_SRC_NAT ; 
 int OVS_CS_F_TRACKED ; 
 int /*<<< orphan*/  FUNC0 (struct sw_flow_key*,int,struct nf_conntrack_zone const*,struct nf_conn*) ; 
 struct nf_conn* FUNC1 (struct sk_buff const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 struct nf_conntrack_zone* FUNC3 (struct nf_conn*) ; 
 struct nf_conntrack_zone nf_ct_zone_dflt ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(const struct sk_buff *skb,
			      const struct ovs_conntrack_info *info,
			      struct sw_flow_key *key, bool post_ct,
			      bool keep_nat_flags)
{
	const struct nf_conntrack_zone *zone = &nf_ct_zone_dflt;
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct;
	u8 state = 0;

	ct = FUNC1(skb, &ctinfo);
	if (ct) {
		state = FUNC4(ctinfo);
		/* All unconfirmed entries are NEW connections. */
		if (!FUNC2(ct))
			state |= OVS_CS_F_NEW;
		/* OVS persists the related flag for the duration of the
		 * connection.
		 */
		if (ct->master)
			state |= OVS_CS_F_RELATED;
		if (keep_nat_flags) {
			state |= key->ct_state & OVS_CS_F_NAT_MASK;
		} else {
			if (ct->status & IPS_SRC_NAT)
				state |= OVS_CS_F_SRC_NAT;
			if (ct->status & IPS_DST_NAT)
				state |= OVS_CS_F_DST_NAT;
		}
		zone = FUNC3(ct);
	} else if (post_ct) {
		state = OVS_CS_F_TRACKED | OVS_CS_F_INVALID;
		if (info)
			zone = &info->zone;
	}
	FUNC0(key, state, zone, ct);
}