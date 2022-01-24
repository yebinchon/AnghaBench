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
struct sk_buff {int /*<<< orphan*/ * next; } ;
struct nfqnl_instance {int dummy; } ;
struct nf_queue_entry {struct sk_buff* skb; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct net*,struct nfqnl_instance*,struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct nf_queue_entry* FUNC3 (struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC5(struct net *net, struct nfqnl_instance *queue,
			   struct sk_buff *skb, struct nf_queue_entry *entry)
{
	int ret = -ENOMEM;
	struct nf_queue_entry *entry_seg;

	FUNC2(skb);

	if (skb->next == NULL) { /* last packet, no need to copy entry */
		struct sk_buff *gso_skb = entry->skb;
		entry->skb = skb;
		ret = FUNC0(net, queue, entry);
		if (ret)
			entry->skb = gso_skb;
		return ret;
	}

	FUNC4(skb);

	entry_seg = FUNC3(entry);
	if (entry_seg) {
		entry_seg->skb = skb;
		ret = FUNC0(net, queue, entry_seg);
		if (ret)
			FUNC1(entry_seg);
	}
	return ret;
}