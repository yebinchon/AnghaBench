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
struct sw_flow_key {int ct_state; } ;
struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {int commit; int /*<<< orphan*/  family; scalar_t__ nat; struct nf_conn* ct; scalar_t__ helper; } ;
struct nf_hook_state {struct net* net; int /*<<< orphan*/  pf; int /*<<< orphan*/  hook; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IP_CT_NEW ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 int OVS_CS_F_NAT_MASK ; 
 int FUNC0 (struct nf_conn*,struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,struct nf_hook_state*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct nf_conn* FUNC4 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*,struct nf_conn*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct ovs_conntrack_info const*,struct sw_flow_key*,int,int) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sw_flow_key *key,
			   const struct ovs_conntrack_info *info,
			   struct sk_buff *skb)
{
	/* If we are recirculating packets to match on conntrack fields and
	 * committing with a separate conntrack action,  then we don't need to
	 * actually run the packet through conntrack twice unless it's for a
	 * different zone.
	 */
	bool cached = FUNC14(net, key, info, skb);
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct;

	if (!cached) {
		struct nf_hook_state state = {
			.hook = NF_INET_PRE_ROUTING,
			.pf = info->family,
			.net = net,
		};
		struct nf_conn *tmpl = info->ct;
		int err;

		/* Associate skb with specified zone. */
		if (tmpl) {
			if (FUNC13(skb))
				FUNC3(FUNC13(skb));
			FUNC1(&tmpl->ct_general);
			FUNC6(skb, tmpl, IP_CT_NEW);
		}

		err = FUNC2(skb, &state);
		if (err != NF_ACCEPT)
			return -ENOENT;

		/* Clear CT state NAT flags to mark that we have not yet done
		 * NAT after the nf_conntrack_in() call.  We can actually clear
		 * the whole state, as it will be re-initialized below.
		 */
		key->ct_state = 0;

		/* Update the key, but keep the NAT flags. */
		FUNC12(skb, info, key, true, true);
	}

	ct = FUNC4(skb, &ctinfo);
	if (ct) {
		/* Packets starting a new connection must be NATted before the
		 * helper, so that the helper knows about the NAT.  We enforce
		 * this by delaying both NAT and helper calls for unconfirmed
		 * connections until the committing CT action.  For later
		 * packets NAT and Helper may be called in either order.
		 *
		 * NAT will be done only if the CT action has NAT, and only
		 * once per packet (per zone), as guarded by the NAT bits in
		 * the key->ct_state.
		 */
		if (info->nat && !(key->ct_state & OVS_CS_F_NAT_MASK) &&
		    (FUNC5(ct) || info->commit) &&
		    FUNC11(net, key, info, skb, ct, ctinfo) != NF_ACCEPT) {
			return -EINVAL;
		}

		/* Userspace may decide to perform a ct lookup without a helper
		 * specified followed by a (recirculate and) commit with one.
		 * Therefore, for unconfirmed connections which we will commit,
		 * we need to attach the helper here.
		 */
		if (!FUNC5(ct) && info->commit &&
		    info->helper && !FUNC7(ct)) {
			int err = FUNC0(ct, info->ct,
							    GFP_ATOMIC);
			if (err)
				return err;

			/* helper installed, add seqadj if NAT is required */
			if (info->nat && !FUNC8(ct)) {
				if (!FUNC9(ct))
					return -EINVAL;
			}
		}

		/* Call the helper only if:
		 * - nf_conntrack_in() was executed above ("!cached") for a
		 *   confirmed connection, or
		 * - When committing an unconfirmed connection.
		 */
		if ((FUNC5(ct) ? !cached : info->commit) &&
		    FUNC10(skb, info->family) != NF_ACCEPT) {
			return -EINVAL;
		}
	}

	return 0;
}