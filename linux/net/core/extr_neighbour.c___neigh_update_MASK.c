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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  addr_len; } ;
struct neighbour {int nud_state; int* ha; int /*<<< orphan*/  lock; scalar_t__ arp_queue_len_bytes; int /*<<< orphan*/  arp_queue; int /*<<< orphan*/  (* output ) (struct neighbour*,struct sk_buff*) ;TYPE_1__* parms; void* confirmed; int /*<<< orphan*/  ha_lock; int /*<<< orphan*/  probes; void* updated; scalar_t__ dead; struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reachable_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_REACHABLE_TIME ; 
 int EINVAL ; 
 int EPERM ; 
 int NEIGH_UPDATE_F_ADMIN ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 int NEIGH_UPDATE_F_OVERRIDE_ISROUTER ; 
 int NEIGH_UPDATE_F_WEAK_OVERRIDE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int NUD_CONNECTED ; 
 int NUD_FAILED ; 
 int NUD_INCOMPLETE ; 
 int NUD_IN_TIMER ; 
 int NUD_NOARP ; 
 int NUD_PERMANENT ; 
 int NUD_PROBE ; 
 int NUD_REACHABLE ; 
 int NUD_STALE ; 
 int NUD_VALID ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC5 (struct dst_entry*,struct sk_buff*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC6 (int const*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int const**,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC10 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC11 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC12 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC13 (struct neighbour*) ; 
 int FUNC14 (struct neighbour*,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC16 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC17 (struct neighbour*,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct neighbour*,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 struct dst_entry* FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct neighbour*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct neighbour*,int const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct neighbour*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct neighbour *neigh, const u8 *lladdr,
			  u8 new, u32 flags, u32 nlmsg_pid,
			  struct netlink_ext_ack *extack)
{
	bool ext_learn_change = false;
	u8 old;
	int err;
	int notify = 0;
	struct net_device *dev;
	int update_isrouter = 0;

	FUNC23(neigh, lladdr, new, flags, nlmsg_pid);

	FUNC25(&neigh->lock);

	dev    = neigh->dev;
	old    = neigh->nud_state;
	err    = -EPERM;

	if (!(flags & NEIGH_UPDATE_F_ADMIN) &&
	    (old & (NUD_NOARP | NUD_PERMANENT)))
		goto out;
	if (neigh->dead) {
		FUNC1(extack, "Neighbor entry is now dead");
		goto out;
	}

	ext_learn_change = FUNC14(neigh, flags, &notify);

	if (!(new & NUD_VALID)) {
		FUNC10(neigh);
		if (old & NUD_CONNECTED)
			FUNC13(neigh);
		neigh->nud_state = new;
		err = 0;
		notify = old & NUD_VALID;
		if ((old & (NUD_INCOMPLETE | NUD_PROBE)) &&
		    (new & NUD_FAILED)) {
			FUNC11(neigh);
			notify = 1;
		}
		goto out;
	}

	/* Compare new lladdr with cached one */
	if (!dev->addr_len) {
		/* First case: device needs no address. */
		lladdr = neigh->ha;
	} else if (lladdr) {
		/* The second case: if something is already cached
		   and a new address is proposed:
		   - compare new & old
		   - if they are different, check override flag
		 */
		if ((old & NUD_VALID) &&
		    !FUNC6(lladdr, neigh->ha, dev->addr_len))
			lladdr = neigh->ha;
	} else {
		/* No address is supplied; if we know something,
		   use it, otherwise discard the request.
		 */
		err = -EINVAL;
		if (!(old & NUD_VALID)) {
			FUNC1(extack, "No link layer address given");
			goto out;
		}
		lladdr = neigh->ha;
	}

	/* Update confirmed timestamp for neighbour entry after we
	 * received ARP packet even if it doesn't change IP to MAC binding.
	 */
	if (new & NUD_CONNECTED)
		neigh->confirmed = jiffies;

	/* If entry was valid and address is not changed,
	   do not change entry state, if new one is STALE.
	 */
	err = 0;
	update_isrouter = flags & NEIGH_UPDATE_F_OVERRIDE_ISROUTER;
	if (old & NUD_VALID) {
		if (lladdr != neigh->ha && !(flags & NEIGH_UPDATE_F_OVERRIDE)) {
			update_isrouter = 0;
			if ((flags & NEIGH_UPDATE_F_WEAK_OVERRIDE) &&
			    (old & NUD_CONNECTED)) {
				lladdr = neigh->ha;
				new = NUD_STALE;
			} else
				goto out;
		} else {
			if (lladdr == neigh->ha && new == NUD_STALE &&
			    !(flags & NEIGH_UPDATE_F_ADMIN))
				new = old;
		}
	}

	/* Update timestamp only once we know we will make a change to the
	 * neighbour entry. Otherwise we risk to move the locktime window with
	 * noop updates and ignore relevant ARP updates.
	 */
	if (new != old || lladdr != neigh->ha)
		neigh->updated = jiffies;

	if (new != old) {
		FUNC10(neigh);
		if (new & NUD_PROBE)
			FUNC4(&neigh->probes, 0);
		if (new & NUD_IN_TIMER)
			FUNC8(neigh, (jiffies +
						((new & NUD_REACHABLE) ?
						 neigh->parms->reachable_time :
						 0)));
		neigh->nud_state = new;
		notify = 1;
	}

	if (lladdr != neigh->ha) {
		FUNC26(&neigh->ha_lock);
		FUNC7(&neigh->ha, lladdr, dev->addr_len);
		FUNC27(&neigh->ha_lock);
		FUNC16(neigh);
		if (!(new & NUD_CONNECTED))
			neigh->confirmed = jiffies -
				      (FUNC0(neigh->parms, BASE_REACHABLE_TIME) << 1);
		notify = 1;
	}
	if (new == old)
		goto out;
	if (new & NUD_CONNECTED)
		FUNC9(neigh);
	else
		FUNC13(neigh);
	if (!(old & NUD_VALID)) {
		struct sk_buff *skb;

		/* Again: avoid dead loop if something went wrong */

		while (neigh->nud_state & NUD_VALID &&
		       (skb = FUNC2(&neigh->arp_queue)) != NULL) {
			struct dst_entry *dst = FUNC21(skb);
			struct neighbour *n2, *n1 = neigh;
			FUNC28(&neigh->lock);

			FUNC19();

			/* Why not just use 'neigh' as-is?  The problem is that
			 * things such as shaper, eql, and sch_teql can end up
			 * using alternative, different, neigh objects to output
			 * the packet in the output path.  So what we need to do
			 * here is re-lookup the top-level neigh in the path so
			 * we can reinject the packet there.
			 */
			n2 = NULL;
			if (dst) {
				n2 = FUNC5(dst, skb);
				if (n2)
					n1 = n2;
			}
			n1->output(n1, skb);
			if (n2)
				FUNC12(n2);
			FUNC20();

			FUNC25(&neigh->lock);
		}
		FUNC3(&neigh->arp_queue);
		neigh->arp_queue_len_bytes = 0;
	}
out:
	if (update_isrouter)
		FUNC17(neigh, flags, &notify);
	FUNC28(&neigh->lock);

	if (((new ^ old) & NUD_PERMANENT) || ext_learn_change)
		FUNC15(neigh);

	if (notify)
		FUNC18(neigh, nlmsg_pid);

	FUNC24(neigh, err);

	return err;
}