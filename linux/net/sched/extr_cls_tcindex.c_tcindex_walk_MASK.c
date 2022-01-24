#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  class; } ;
struct TYPE_5__ {TYPE_1__ res; } ;
struct tcindex_filter {TYPE_2__ result; int /*<<< orphan*/  next; } ;
struct tcindex_data {int hash; int /*<<< orphan*/ * h; TYPE_2__* perfect; } ;
struct tcf_walker {scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct tcf_proto*,TYPE_2__*,struct tcf_walker*) ;int stop; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tcf_proto*,struct tcf_walker*,struct tcindex_data*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tcf_proto*,TYPE_2__*,struct tcf_walker*) ; 
 scalar_t__ FUNC3 (struct tcf_proto*,TYPE_2__*,struct tcf_walker*) ; 

__attribute__((used)) static void FUNC4(struct tcf_proto *tp, struct tcf_walker *walker,
			 bool rtnl_held)
{
	struct tcindex_data *p = FUNC1(tp->root);
	struct tcindex_filter *f, *next;
	int i;

	FUNC0("tcindex_walk(tp %p,walker %p),p %p\n", tp, walker, p);
	if (p->perfect) {
		for (i = 0; i < p->hash; i++) {
			if (!p->perfect[i].res.class)
				continue;
			if (walker->count >= walker->skip) {
				if (walker->fn(tp, p->perfect + i, walker) < 0) {
					walker->stop = 1;
					return;
				}
			}
			walker->count++;
		}
	}
	if (!p->h)
		return;
	for (i = 0; i < p->hash; i++) {
		for (f = FUNC1(p->h[i]); f; f = next) {
			next = FUNC1(f->next);
			if (walker->count >= walker->skip) {
				if (walker->fn(tp, &f->result, walker) < 0) {
					walker->stop = 1;
					return;
				}
			}
			walker->count++;
		}
	}
}