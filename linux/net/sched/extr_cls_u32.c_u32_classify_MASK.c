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
struct tcf_result {int dummy; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct TYPE_4__ {int nkeys; int flags; unsigned int hoff; int off; unsigned int offoff; int offmask; int offshift; struct tc_u32_key* keys; } ;
struct tc_u_knode {int mask; int val; int /*<<< orphan*/  ht_up; TYPE_2__ sel; int /*<<< orphan*/  fshift; int /*<<< orphan*/  ht_down; int /*<<< orphan*/  next; int /*<<< orphan*/  exts; TYPE_1__* pf; int /*<<< orphan*/  ifindex; struct tcf_result res; int /*<<< orphan*/ * pcpu_success; int /*<<< orphan*/  flags; } ;
struct tc_u_hnode {int divisor; int /*<<< orphan*/ * ht; } ;
struct tc_u32_key {unsigned int off; int offmask; int val; int mask; } ;
struct sk_buff {int mark; unsigned int len; } ;
typedef  int __be32 ;
typedef  int __be16 ;
struct TYPE_3__ {int /*<<< orphan*/  rhit; int /*<<< orphan*/ * kcnts; int /*<<< orphan*/  rcnt; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int TC_U32_EAT ; 
 int TC_U32_MAXDEPTH ; 
 int TC_U32_OFFSET ; 
 int TC_U32_TERMINAL ; 
 int TC_U32_VAROFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int* FUNC4 (struct sk_buff*,unsigned int,int,int*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, const struct tcf_proto *tp,
			struct tcf_result *res)
{
	struct {
		struct tc_u_knode *knode;
		unsigned int	  off;
	} stack[TC_U32_MAXDEPTH];

	struct tc_u_hnode *ht = FUNC3(tp->root);
	unsigned int off = FUNC6(skb);
	struct tc_u_knode *n;
	int sdepth = 0;
	int off2 = 0;
	int sel = 0;
#ifdef CONFIG_CLS_U32_PERF
	int j;
#endif
	int i, r;

next_ht:
	n = FUNC3(ht->ht[sel]);

next_knode:
	if (n) {
		struct tc_u32_key *key = n->sel.keys;

#ifdef CONFIG_CLS_U32_PERF
		__this_cpu_inc(n->pf->rcnt);
		j = 0;
#endif

		if (FUNC7(n->flags)) {
			n = FUNC3(n->next);
			goto next_knode;
		}

#ifdef CONFIG_CLS_U32_MARK
		if ((skb->mark & n->mask) != n->val) {
			n = rcu_dereference_bh(n->next);
			goto next_knode;
		} else {
			__this_cpu_inc(*n->pcpu_success);
		}
#endif

		for (i = n->sel.nkeys; i > 0; i--, key++) {
			int toff = off + key->off + (off2 & key->offmask);
			__be32 *data, hdata;

			if (FUNC5(skb) + toff > INT_MAX)
				goto out;

			data = FUNC4(skb, toff, 4, &hdata);
			if (!data)
				goto out;
			if ((*data ^ key->val) & key->mask) {
				n = FUNC3(n->next);
				goto next_knode;
			}
#ifdef CONFIG_CLS_U32_PERF
			__this_cpu_inc(n->pf->kcnts[j]);
			j++;
#endif
		}

		ht = FUNC3(n->ht_down);
		if (!ht) {
check_terminal:
			if (n->sel.flags & TC_U32_TERMINAL) {

				*res = n->res;
				if (!FUNC9(skb, n->ifindex)) {
					n = FUNC3(n->next);
					goto next_knode;
				}
#ifdef CONFIG_CLS_U32_PERF
				__this_cpu_inc(n->pf->rhit);
#endif
				r = FUNC8(skb, &n->exts, res);
				if (r < 0) {
					n = FUNC3(n->next);
					goto next_knode;
				}

				return r;
			}
			n = FUNC3(n->next);
			goto next_knode;
		}

		/* PUSH */
		if (sdepth >= TC_U32_MAXDEPTH)
			goto deadloop;
		stack[sdepth].knode = n;
		stack[sdepth].off = off;
		sdepth++;

		ht = FUNC3(n->ht_down);
		sel = 0;
		if (ht->divisor) {
			__be32 *data, hdata;

			data = FUNC4(skb, off + n->sel.hoff, 4,
						  &hdata);
			if (!data)
				goto out;
			sel = ht->divisor & FUNC10(*data, &n->sel,
							  n->fshift);
		}
		if (!(n->sel.flags & (TC_U32_VAROFFSET | TC_U32_OFFSET | TC_U32_EAT)))
			goto next_ht;

		if (n->sel.flags & (TC_U32_OFFSET | TC_U32_VAROFFSET)) {
			off2 = n->sel.off + 3;
			if (n->sel.flags & TC_U32_VAROFFSET) {
				__be16 *data, hdata;

				data = FUNC4(skb,
							  off + n->sel.offoff,
							  2, &hdata);
				if (!data)
					goto out;
				off2 += FUNC2(n->sel.offmask & *data) >>
					n->sel.offshift;
			}
			off2 &= ~3;
		}
		if (n->sel.flags & TC_U32_EAT) {
			off += off2;
			off2 = 0;
		}

		if (off < skb->len)
			goto next_ht;
	}

	/* POP */
	if (sdepth--) {
		n = stack[sdepth].knode;
		ht = FUNC3(n->ht_up);
		off = stack[sdepth].off;
		goto check_terminal;
	}
out:
	return -1;

deadloop:
	FUNC1("cls_u32: dead loop\n");
	return -1;
}