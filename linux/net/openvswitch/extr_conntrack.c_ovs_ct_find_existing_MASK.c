#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct nf_conntrack_tuple_hash {TYPE_2__ tuple; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {struct nf_conntrack_tuple_hash* tuplehash; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_tuple_hash* FUNC0 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC4 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static struct nf_conn *
FUNC8(struct net *net, const struct nf_conntrack_zone *zone,
		     u8 l3num, struct sk_buff *skb, bool natted)
{
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_tuple_hash *h;
	struct nf_conn *ct;

	if (!FUNC1(skb, FUNC7(skb), l3num,
			       net, &tuple)) {
		FUNC6("ovs_ct_find_existing: Can't get tuple\n");
		return NULL;
	}

	/* Must invert the tuple if skb has been transformed by NAT. */
	if (natted) {
		struct nf_conntrack_tuple inverse;

		if (!FUNC2(&inverse, &tuple)) {
			FUNC6("ovs_ct_find_existing: Inversion failed!\n");
			return NULL;
		}
		tuple = inverse;
	}

	/* look for tuple match */
	h = FUNC0(net, zone, &tuple);
	if (!h)
		return NULL;   /* Not found. */

	ct = FUNC4(h);

	/* Inverted packet tuple matches the reverse direction conntrack tuple,
	 * select the other tuplehash to get the right 'ctinfo' bits for this
	 * packet.
	 */
	if (natted)
		h = &ct->tuplehash[!h->tuple.dst.dir];

	FUNC3(skb, ct, FUNC5(h));
	return ct;
}