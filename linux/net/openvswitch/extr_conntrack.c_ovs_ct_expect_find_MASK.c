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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_expect* FUNC0 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ; 
 struct nf_conntrack_tuple_hash* FUNC1 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct nf_conntrack_tuple*) ; 
 struct nf_conn* FUNC5 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff const*) ; 

__attribute__((used)) static struct nf_conntrack_expect *
FUNC7(struct net *net, const struct nf_conntrack_zone *zone,
		   u16 proto, const struct sk_buff *skb)
{
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_expect *exp;

	if (!FUNC4(skb, FUNC6(skb), proto, net, &tuple))
		return NULL;

	exp = FUNC0(net, zone, &tuple);
	if (exp) {
		struct nf_conntrack_tuple_hash *h;

		/* Delete existing conntrack entry, if it clashes with the
		 * expectation.  This can happen since conntrack ALGs do not
		 * check for clashes between (new) expectations and existing
		 * conntrack entries.  nf_conntrack_in() will check the
		 * expectations only if a conntrack entry can not be found,
		 * which can lead to OVS finding the expectation (here) in the
		 * init direction, but which will not be removed by the
		 * nf_conntrack_in() call, if a matching conntrack entry is
		 * found instead.  In this case all init direction packets
		 * would be reported as new related packets, while reply
		 * direction packets would be reported as un-related
		 * established packets.
		 */
		h = FUNC1(net, zone, &tuple);
		if (h) {
			struct nf_conn *ct = FUNC5(h);

			FUNC3(ct, 0, 0);
			FUNC2(&ct->ct_general);
		}
	}

	return exp;
}