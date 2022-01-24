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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nf_hook_state {int /*<<< orphan*/  net; int /*<<< orphan*/  pf; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_EXPECTED_BIT ; 
 int /*<<< orphan*/  IPS_SEEN_REPLY_BIT ; 
 scalar_t__ IP_CT_DIR_REPLY ; 
 int IP_CT_ESTABLISHED ; 
 int IP_CT_ESTABLISHED_REPLY ; 
 int IP_CT_NEW ; 
 int IP_CT_RELATED ; 
 scalar_t__ FUNC0 (struct nf_conntrack_tuple_hash*) ; 
 scalar_t__ FUNC1 (struct nf_conntrack_tuple_hash*) ; 
 int FUNC2 (struct nf_conntrack_tuple_hash*) ; 
 struct nf_conntrack_tuple_hash* FUNC3 (int /*<<< orphan*/ ,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_tuple*,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC5 (int /*<<< orphan*/ ,struct nf_conn*,struct nf_conntrack_tuple*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nf_conn*,int) ; 
 struct nf_conn* FUNC8 (struct nf_conntrack_tuple_hash*) ; 
 struct nf_conntrack_zone* FUNC9 (struct nf_conn*,struct sk_buff*,struct nf_conntrack_zone*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct nf_conn *tmpl,
		  struct sk_buff *skb,
		  unsigned int dataoff,
		  u_int8_t protonum,
		  const struct nf_hook_state *state)
{
	const struct nf_conntrack_zone *zone;
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_tuple_hash *h;
	enum ip_conntrack_info ctinfo;
	struct nf_conntrack_zone tmp;
	struct nf_conn *ct;
	u32 hash;

	if (!FUNC6(skb, FUNC11(skb),
			     dataoff, state->pf, protonum, state->net,
			     &tuple)) {
		FUNC10("Can't get tuple\n");
		return 0;
	}

	/* look for tuple match */
	zone = FUNC9(tmpl, skb, &tmp);
	hash = FUNC4(&tuple, state->net);
	h = FUNC3(state->net, zone, &tuple, hash);
	if (!h) {
		h = FUNC5(state->net, tmpl, &tuple,
				   skb, dataoff, hash);
		if (!h)
			return 0;
		if (FUNC0(h))
			return FUNC2(h);
	}
	ct = FUNC8(h);

	/* It exists; we have (non-exclusive) reference. */
	if (FUNC1(h) == IP_CT_DIR_REPLY) {
		ctinfo = IP_CT_ESTABLISHED_REPLY;
	} else {
		/* Once we've had two way comms, always ESTABLISHED. */
		if (FUNC12(IPS_SEEN_REPLY_BIT, &ct->status)) {
			FUNC10("normal packet for %p\n", ct);
			ctinfo = IP_CT_ESTABLISHED;
		} else if (FUNC12(IPS_EXPECTED_BIT, &ct->status)) {
			FUNC10("related packet for %p\n", ct);
			ctinfo = IP_CT_RELATED;
		} else {
			FUNC10("new packet for %p\n", ct);
			ctinfo = IP_CT_NEW;
		}
	}
	FUNC7(skb, ct, ctinfo);
	return 0;
}