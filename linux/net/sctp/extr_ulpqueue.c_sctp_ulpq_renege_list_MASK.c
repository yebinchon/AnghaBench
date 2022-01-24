#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct sctp_ulpq {TYPE_2__* asoc; } ;
struct sctp_ulpevent {int /*<<< orphan*/  tsn; } ;
struct sctp_tsnmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_6__ {struct sk_buff* frag_list; } ;
struct TYPE_4__ {struct sctp_tsnmap tsn_map; } ;
struct TYPE_5__ {TYPE_1__ peer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff_head*) ; 
 struct sctp_ulpevent* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tsnmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_tsnmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_ulpevent*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff_head*) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 

__u16 FUNC9(struct sctp_ulpq *ulpq, struct sk_buff_head *list,
			    __u16 needed)
{
	__u16 freed = 0;
	__u32 tsn, last_tsn;
	struct sk_buff *skb, *flist, *last;
	struct sctp_ulpevent *event;
	struct sctp_tsnmap *tsnmap;

	tsnmap = &ulpq->asoc->peer.tsn_map;

	while ((skb = FUNC7(list)) != NULL) {
		event = FUNC2(skb);
		tsn = event->tsn;

		/* Don't renege below the Cumulative TSN ACK Point. */
		if (FUNC0(tsn, FUNC3(tsnmap)))
			break;

		/* Events in ordering queue may have multiple fragments
		 * corresponding to additional TSNs.  Sum the total
		 * freed space; find the last TSN.
		 */
		freed += FUNC6(skb);
		flist = FUNC8(skb)->frag_list;
		for (last = flist; flist; flist = flist->next) {
			last = flist;
			freed += FUNC6(last);
		}
		if (last)
			last_tsn = FUNC2(last)->tsn;
		else
			last_tsn = tsn;

		/* Unlink the event, then renege all applicable TSNs. */
		FUNC1(skb, list);
		FUNC5(event);
		while (FUNC0(tsn, last_tsn)) {
			FUNC4(tsnmap, tsn);
			tsn++;
		}
		if (freed >= needed)
			return freed;
	}

	return freed;
}