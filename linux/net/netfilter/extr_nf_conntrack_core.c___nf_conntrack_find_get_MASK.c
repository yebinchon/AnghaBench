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
typedef  int /*<<< orphan*/  u32 ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_tuple_hash* FUNC0 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conntrack_tuple_hash*,struct nf_conntrack_tuple const*,struct nf_conntrack_zone const*,struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 struct nf_conn* FUNC5 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static struct nf_conntrack_tuple_hash *
FUNC8(struct net *net, const struct nf_conntrack_zone *zone,
			const struct nf_conntrack_tuple *tuple, u32 hash)
{
	struct nf_conntrack_tuple_hash *h;
	struct nf_conn *ct;

	FUNC6();

	h = FUNC0(net, zone, tuple, hash);
	if (h) {
		/* We have a candidate that matches the tuple we're interested
		 * in, try to obtain a reference and re-check tuple
		 */
		ct = FUNC5(h);
		if (FUNC2(FUNC1(&ct->ct_general.use))) {
			if (FUNC2(FUNC3(h, tuple, zone, net)))
				goto found;

			/* TYPESAFE_BY_RCU recycled the candidate */
			FUNC4(ct);
		}

		h = NULL;
	}
found:
	FUNC7();

	return h;
}