#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; struct net* net; int /*<<< orphan*/  (* okfn ) (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ;int /*<<< orphan*/  hook; int /*<<< orphan*/  pf; } ;
struct nf_queue_entry {unsigned int hook_index; TYPE_1__ state; struct sk_buff* skb; } ;
struct nf_hook_entry {int dummy; } ;
struct nf_hook_entries {unsigned int num_hook_entries; struct nf_hook_entry* hooks; } ;
struct net {int dummy; } ;

/* Variables and functions */
#define  NF_ACCEPT 131 
 unsigned int NF_DROP ; 
#define  NF_QUEUE 130 
 unsigned int NF_REPEAT ; 
#define  NF_STOLEN 129 
#define  NF_STOP 128 
 unsigned int NF_VERDICT_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct nf_hook_entries* FUNC5 (struct net const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct nf_hook_entry const*,struct sk_buff*,TYPE_1__*) ; 
 unsigned int FUNC7 (struct sk_buff*,TYPE_1__*,struct nf_hook_entries const*,unsigned int*) ; 
 int FUNC8 (struct sk_buff*,TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_queue_entry*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ; 

void FUNC12(struct nf_queue_entry *entry, unsigned int verdict)
{
	const struct nf_hook_entry *hook_entry;
	const struct nf_hook_entries *hooks;
	struct sk_buff *skb = entry->skb;
	const struct net *net;
	unsigned int i;
	int err;
	u8 pf;

	net = entry->state.net;
	pf = entry->state.pf;

	hooks = FUNC5(net, pf, entry->state.hook);

	FUNC9(entry);

	i = entry->hook_index;
	if (FUNC0(!hooks || i >= hooks->num_hook_entries)) {
		FUNC2(skb);
		FUNC1(entry);
		return;
	}

	hook_entry = &hooks->hooks[i];

	/* Continue traversal iff userspace said ok... */
	if (verdict == NF_REPEAT)
		verdict = FUNC6(hook_entry, skb, &entry->state);

	if (verdict == NF_ACCEPT) {
		if (FUNC10(skb, entry) < 0)
			verdict = NF_DROP;
	}

	if (verdict == NF_ACCEPT) {
next_hook:
		++i;
		verdict = FUNC7(skb, &entry->state, hooks, &i);
	}

	switch (verdict & NF_VERDICT_MASK) {
	case NF_ACCEPT:
	case NF_STOP:
		FUNC3();
		entry->state.okfn(entry->state.net, entry->state.sk, skb);
		FUNC4();
		break;
	case NF_QUEUE:
		err = FUNC8(skb, &entry->state, i, verdict);
		if (err == 1)
			goto next_hook;
		break;
	case NF_STOLEN:
		break;
	default:
		FUNC2(skb);
	}

	FUNC1(entry);
}