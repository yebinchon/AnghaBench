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
struct nf_nat_range2 {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  status; int /*<<< orphan*/  nat_bysource; TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 unsigned int CONNTRACK_LOCKS ; 
 int /*<<< orphan*/  IPS_DST_NAT ; 
 int /*<<< orphan*/  IPS_DST_NAT_DONE ; 
 int /*<<< orphan*/  IPS_SRC_NAT ; 
 int /*<<< orphan*/  IPS_SRC_NAT_DONE ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int NF_NAT_MANIP_DST ; 
 int NF_NAT_MANIP_SRC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,struct nf_nat_range2 const*,struct nf_conn*,int) ; 
 unsigned int FUNC2 (struct net*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 scalar_t__ FUNC6 (struct nf_conn*) ; 
 struct net* FUNC7 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/ * nf_nat_bysource ; 
 int FUNC9 (struct nf_conn*,int) ; 
 int /*<<< orphan*/ * nf_nat_locks ; 
 scalar_t__ FUNC10 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

unsigned int
FUNC15(struct nf_conn *ct,
		  const struct nf_nat_range2 *range,
		  enum nf_nat_manip_type maniptype)
{
	struct net *net = FUNC7(ct);
	struct nf_conntrack_tuple curr_tuple, new_tuple;

	/* Can't setup nat info for confirmed ct. */
	if (FUNC6(ct))
		return NF_ACCEPT;

	FUNC0(maniptype != NF_NAT_MANIP_SRC &&
		maniptype != NF_NAT_MANIP_DST);

	if (FUNC0(FUNC9(ct, maniptype)))
		return NF_DROP;

	/* What we've got will look like inverse of reply. Normally
	 * this is what is in the conntrack, except for prior
	 * manipulations (future optimization: if num_manips == 0,
	 * orig_tp = ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple)
	 */
	FUNC5(&curr_tuple,
			   &ct->tuplehash[IP_CT_DIR_REPLY].tuple);

	FUNC1(&new_tuple, &curr_tuple, range, ct, maniptype);

	if (!FUNC8(&new_tuple, &curr_tuple)) {
		struct nf_conntrack_tuple reply;

		/* Alter conntrack table so will recognize replies. */
		FUNC5(&reply, &new_tuple);
		FUNC4(ct, &reply);

		/* Non-atomic: we own this at the moment. */
		if (maniptype == NF_NAT_MANIP_SRC)
			ct->status |= IPS_SRC_NAT;
		else
			ct->status |= IPS_DST_NAT;

		if (FUNC10(ct) && !FUNC11(ct))
			if (!FUNC12(ct))
				return NF_DROP;
	}

	if (maniptype == NF_NAT_MANIP_SRC) {
		unsigned int srchash;
		spinlock_t *lock;

		srchash = FUNC2(net,
				      &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
		lock = &nf_nat_locks[srchash % CONNTRACK_LOCKS];
		FUNC13(lock);
		FUNC3(&ct->nat_bysource,
				   &nf_nat_bysource[srchash]);
		FUNC14(lock);
	}

	/* It's done. */
	if (maniptype == NF_NAT_MANIP_DST)
		ct->status |= IPS_DST_NAT_DONE;
	else
		ct->status |= IPS_SRC_NAT_DONE;

	return NF_ACCEPT;
}