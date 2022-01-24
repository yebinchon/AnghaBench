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
struct xt_action_param {int hotdrop; int /*<<< orphan*/  targinfo; TYPE_1__* target; struct nf_hook_state const* state; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nf_hook_state {unsigned int hook; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct ebt_table_info {char* entries; struct ebt_entries** hook_entry; struct ebt_chainstack** chainstack; int /*<<< orphan*/  nentries; int /*<<< orphan*/  counters; } ;
struct ebt_table {int /*<<< orphan*/  lock; struct ebt_table_info* private; } ;
struct ebt_standard_target {int verdict; } ;
struct TYPE_4__ {TYPE_1__* target; } ;
struct ebt_entry_target {TYPE_2__ u; int /*<<< orphan*/  data; } ;
struct ebt_entry {int dummy; } ;
struct ebt_entries {int nentries; int counter_offset; int distinguisher; int policy; scalar_t__ data; } ;
struct ebt_counter {int dummy; } ;
struct ebt_chainstack {int n; struct ebt_entry* e; struct ebt_entries* chaininfo; } ;
struct TYPE_3__ {int (* target ) (struct sk_buff*,struct xt_action_param*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ebt_counter,int /*<<< orphan*/ ,int) ; 
 struct ebt_counter* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int EBT_ACCEPT ; 
 int EBT_CONTINUE ; 
 int EBT_DROP ; 
 scalar_t__ FUNC2 (struct ebt_entry*,int /*<<< orphan*/ ,struct sk_buff*,struct xt_action_param*) ; 
 int EBT_RETURN ; 
 int /*<<< orphan*/  FUNC3 (struct ebt_entry*,int /*<<< orphan*/ ,struct sk_buff*,struct xt_action_param*) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 scalar_t__ FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (struct ebt_entry*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ebt_do_match ; 
 int /*<<< orphan*/  ebt_do_watcher ; 
 struct ebt_entry_target* FUNC6 (struct ebt_entry*) ; 
 void* FUNC7 (struct ebt_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 () ; 
 int FUNC11 (struct sk_buff*,struct xt_action_param*) ; 

unsigned int FUNC12(struct sk_buff *skb,
			  const struct nf_hook_state *state,
			  struct ebt_table *table)
{
	unsigned int hook = state->hook;
	int i, nentries;
	struct ebt_entry *point;
	struct ebt_counter *counter_base, *cb_base;
	const struct ebt_entry_target *t;
	int verdict, sp = 0;
	struct ebt_chainstack *cs;
	struct ebt_entries *chaininfo;
	const char *base;
	const struct ebt_table_info *private;
	struct xt_action_param acpar;

	acpar.state   = state;
	acpar.hotdrop = false;

	FUNC8(&table->lock);
	private = table->private;
	cb_base = FUNC1(private->counters, private->nentries,
	   FUNC10());
	if (private->chainstack)
		cs = private->chainstack[FUNC10()];
	else
		cs = NULL;
	chaininfo = private->hook_entry[hook];
	nentries = private->hook_entry[hook]->nentries;
	point = (struct ebt_entry *)(private->hook_entry[hook]->data);
	counter_base = cb_base + private->hook_entry[hook]->counter_offset;
	/* base for chain jumps */
	base = private->entries;
	i = 0;
	while (i < nentries) {
		if (FUNC5(point, skb, state->in, state->out))
			goto letscontinue;

		if (FUNC2(point, ebt_do_match, skb, &acpar) != 0)
			goto letscontinue;
		if (acpar.hotdrop) {
			FUNC9(&table->lock);
			return NF_DROP;
		}

		FUNC0(*(counter_base + i), skb->len, 1);

		/* these should only watch: not modify, nor tell us
		 * what to do with the packet
		 */
		FUNC3(point, ebt_do_watcher, skb, &acpar);

		t = FUNC6(point);
		/* standard target */
		if (!t->u.target->target)
			verdict = ((struct ebt_standard_target *)t)->verdict;
		else {
			acpar.target   = t->u.target;
			acpar.targinfo = t->data;
			verdict = t->u.target->target(skb, &acpar);
		}
		if (verdict == EBT_ACCEPT) {
			FUNC9(&table->lock);
			return NF_ACCEPT;
		}
		if (verdict == EBT_DROP) {
			FUNC9(&table->lock);
			return NF_DROP;
		}
		if (verdict == EBT_RETURN) {
letsreturn:
			if (FUNC4(sp == 0, "RETURN on base chain")) {
				/* act like this is EBT_CONTINUE */
				goto letscontinue;
			}

			sp--;
			/* put all the local variables right */
			i = cs[sp].n;
			chaininfo = cs[sp].chaininfo;
			nentries = chaininfo->nentries;
			point = cs[sp].e;
			counter_base = cb_base +
			   chaininfo->counter_offset;
			continue;
		}
		if (verdict == EBT_CONTINUE)
			goto letscontinue;

		if (FUNC4(verdict < 0, "bogus standard verdict\n")) {
			FUNC9(&table->lock);
			return NF_DROP;
		}

		/* jump to a udc */
		cs[sp].n = i + 1;
		cs[sp].chaininfo = chaininfo;
		cs[sp].e = FUNC7(point);
		i = 0;
		chaininfo = (struct ebt_entries *) (base + verdict);

		if (FUNC4(chaininfo->distinguisher, "jump to non-chain\n")) {
			FUNC9(&table->lock);
			return NF_DROP;
		}

		nentries = chaininfo->nentries;
		point = (struct ebt_entry *)chaininfo->data;
		counter_base = cb_base + chaininfo->counter_offset;
		sp++;
		continue;
letscontinue:
		point = FUNC7(point);
		i++;
	}

	/* I actually like this :) */
	if (chaininfo->policy == EBT_RETURN)
		goto letsreturn;
	if (chaininfo->policy == EBT_ACCEPT) {
		FUNC9(&table->lock);
		return NF_ACCEPT;
	}
	FUNC9(&table->lock);
	return NF_DROP;
}