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
struct tcf_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct tcf_proto*,struct tc_u_knode*,struct tcf_walker*) ;} ;
struct tcf_proto {scalar_t__ prio; struct tc_u_common* data; } ;
struct tc_u_knode {scalar_t__ prio; unsigned int divisor; int /*<<< orphan*/  next; int /*<<< orphan*/ * ht; } ;
struct tc_u_hnode {scalar_t__ prio; unsigned int divisor; int /*<<< orphan*/  next; int /*<<< orphan*/ * ht; } ;
struct tc_u_common {int /*<<< orphan*/  hlist; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tcf_proto*,struct tc_u_knode*,struct tcf_walker*) ; 
 scalar_t__ FUNC2 (struct tcf_proto*,struct tc_u_knode*,struct tcf_walker*) ; 

__attribute__((used)) static void FUNC3(struct tcf_proto *tp, struct tcf_walker *arg,
		     bool rtnl_held)
{
	struct tc_u_common *tp_c = tp->data;
	struct tc_u_hnode *ht;
	struct tc_u_knode *n;
	unsigned int h;

	if (arg->stop)
		return;

	for (ht = FUNC0(tp_c->hlist);
	     ht;
	     ht = FUNC0(ht->next)) {
		if (ht->prio != tp->prio)
			continue;
		if (arg->count >= arg->skip) {
			if (arg->fn(tp, ht, arg) < 0) {
				arg->stop = 1;
				return;
			}
		}
		arg->count++;
		for (h = 0; h <= ht->divisor; h++) {
			for (n = FUNC0(ht->ht[h]);
			     n;
			     n = FUNC0(n->next)) {
				if (arg->count < arg->skip) {
					arg->count++;
					continue;
				}
				if (arg->fn(tp, n, arg) < 0) {
					arg->stop = 1;
					return;
				}
				arg->count++;
			}
		}
	}
}