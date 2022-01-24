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
struct sk_buff {struct sk_buff* next; void* protocol; } ;
struct nfqnl_instance {scalar_t__ copy_mode; int flags; } ;
struct nfnl_queue_net {int dummy; } ;
struct TYPE_2__ {int pf; struct net* net; } ;
struct nf_queue_entry {TYPE_1__ state; struct sk_buff* skb; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ESRCH ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int NFQA_CFG_F_GSO ; 
 scalar_t__ NFQNL_COPY_NONE ; 
 int FUNC1 (struct net*,struct nfqnl_instance*,struct nf_queue_entry*) ; 
 int FUNC2 (struct net*,struct nfqnl_instance*,struct sk_buff*,struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_queue_entry*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfqnl_instance* FUNC5 (struct nfnl_queue_net*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct nfnl_queue_net* FUNC9 (struct net*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC12(struct nf_queue_entry *entry, unsigned int queuenum)
{
	unsigned int queued;
	struct nfqnl_instance *queue;
	struct sk_buff *skb, *segs;
	int err = -ENOBUFS;
	struct net *net = entry->state.net;
	struct nfnl_queue_net *q = FUNC9(net);

	/* rcu_read_lock()ed by nf_hook_thresh */
	queue = FUNC5(q, queuenum);
	if (!queue)
		return -ESRCH;

	if (queue->copy_mode == NFQNL_COPY_NONE)
		return -EINVAL;

	skb = entry->skb;

	switch (entry->state.pf) {
	case NFPROTO_IPV4:
		skb->protocol = FUNC4(ETH_P_IP);
		break;
	case NFPROTO_IPV6:
		skb->protocol = FUNC4(ETH_P_IPV6);
		break;
	}

	if ((queue->flags & NFQA_CFG_F_GSO) || !FUNC11(skb))
		return FUNC1(net, queue, entry);

	FUNC8(skb);
	segs = FUNC10(skb, 0);
	/* Does not use PTR_ERR to limit the number of error codes that can be
	 * returned by nf_queue.  For instance, callers rely on -ESRCH to
	 * mean 'ignore this hook'.
	 */
	if (FUNC0(segs))
		goto out_err;
	queued = 0;
	err = 0;
	do {
		struct sk_buff *nskb = segs->next;
		if (err == 0)
			err = FUNC2(net, queue,
							segs, entry);
		if (err == 0)
			queued++;
		else
			FUNC6(segs);
		segs = nskb;
	} while (segs);

	if (queued) {
		if (err) /* some segments are already queued */
			FUNC3(entry);
		FUNC6(skb);
		return 0;
	}
 out_err:
	FUNC7(skb);
	return err;
}