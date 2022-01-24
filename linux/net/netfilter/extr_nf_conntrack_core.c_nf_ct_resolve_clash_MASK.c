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
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_l4proto {scalar_t__ allow_clash; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;
struct nf_conn {int status; TYPE_1__ ct_general; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int IPS_NAT_DONE_MASK ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int NF_DROP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drop ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*,int,struct nf_conn*) ; 
 struct nf_conn* FUNC4 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 struct nf_conntrack_l4proto* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nf_conn*,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nf_conn*,int) ; 
 struct nf_conn* FUNC11 (struct nf_conntrack_tuple_hash*) ; 

__attribute__((used)) static int FUNC12(struct net *net, struct sk_buff *skb,
			       enum ip_conntrack_info ctinfo,
			       struct nf_conntrack_tuple_hash *h)
{
	/* This is the conntrack entry already in hashes that won race. */
	struct nf_conn *ct = FUNC11(h);
	const struct nf_conntrack_l4proto *l4proto;
	enum ip_conntrack_info oldinfo;
	struct nf_conn *loser_ct = FUNC4(skb, &oldinfo);

	l4proto = FUNC6(FUNC8(ct));
	if (l4proto->allow_clash &&
	    !FUNC5(ct) &&
	    FUNC1(&ct->ct_general.use)) {
		if (((ct->status & IPS_NAT_DONE_MASK) == 0) ||
		    FUNC7(ct, loser_ct)) {
			FUNC3(ct, ctinfo, loser_ct);
			FUNC2(&loser_ct->ct_general);
			FUNC10(skb, ct, oldinfo);
			return NF_ACCEPT;
		}
		FUNC9(ct);
	}
	FUNC0(net, drop);
	return NF_DROP;
}