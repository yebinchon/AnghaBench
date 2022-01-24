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
struct sk_buff {int dummy; } ;
struct nfqnl_instance {scalar_t__ queue_total; scalar_t__ queue_maxlen; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue_user_dropped; int /*<<< orphan*/  peer_portid; scalar_t__ id_sequence; int /*<<< orphan*/  queue_dropped; } ;
struct nf_queue_entry {scalar_t__ id; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int NFQA_CFG_F_FAIL_OPEN ; 
 int /*<<< orphan*/  NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct nfqnl_instance*,struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct nf_queue_entry*) ; 
 int FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct net*,struct nfqnl_instance*,struct nf_queue_entry*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct net *net, struct nfqnl_instance *queue,
			struct nf_queue_entry *entry)
{
	struct sk_buff *nskb;
	int err = -ENOBUFS;
	__be32 *packet_id_ptr;
	int failopen = 0;

	nskb = FUNC6(net, queue, entry, &packet_id_ptr);
	if (nskb == NULL) {
		err = -ENOMEM;
		goto err_out;
	}
	FUNC8(&queue->lock);

	if (FUNC4(entry))
		goto err_out_free_nskb;

	if (queue->queue_total >= queue->queue_maxlen) {
		if (queue->flags & NFQA_CFG_F_FAIL_OPEN) {
			failopen = 1;
			err = 0;
		} else {
			queue->queue_dropped++;
			FUNC3("nf_queue: full at %d entries, dropping packets(s)\n",
					     queue->queue_total);
		}
		goto err_out_free_nskb;
	}
	entry->id = ++queue->id_sequence;
	*packet_id_ptr = FUNC1(entry->id);

	/* nfnetlink_unicast will either free the nskb or add it to a socket */
	err = FUNC5(nskb, net, queue->peer_portid, MSG_DONTWAIT);
	if (err < 0) {
		if (queue->flags & NFQA_CFG_F_FAIL_OPEN) {
			failopen = 1;
			err = 0;
		} else {
			queue->queue_user_dropped++;
		}
		goto err_out_unlock;
	}

	FUNC0(queue, entry);

	FUNC9(&queue->lock);
	return 0;

err_out_free_nskb:
	FUNC2(nskb);
err_out_unlock:
	FUNC9(&queue->lock);
	if (failopen)
		FUNC7(entry, NF_ACCEPT);
err_out:
	return err;
}