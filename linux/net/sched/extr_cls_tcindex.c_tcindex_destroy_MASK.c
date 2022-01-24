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
struct tcindex_filter_result {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  res; } ;
struct tcindex_filter {int /*<<< orphan*/  result; int /*<<< orphan*/  next; } ;
struct tcindex_data {int hash; int /*<<< orphan*/  rwork; int /*<<< orphan*/ * h; struct tcindex_filter_result* perfect; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcindex_filter_result*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct tcf_proto*,struct tcindex_data*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcindex_destroy_rexts_work ; 
 int /*<<< orphan*/  tcindex_destroy_work ; 

__attribute__((used)) static void FUNC7(struct tcf_proto *tp, bool rtnl_held,
			    struct netlink_ext_ack *extack)
{
	struct tcindex_data *p = FUNC2(tp->root);
	int i;

	FUNC1("tcindex_destroy(tp %p),p %p\n", tp, p);

	if (p->perfect) {
		for (i = 0; i < p->hash; i++) {
			struct tcindex_filter_result *r = p->perfect + i;

			FUNC5(tp, &r->res);
			if (FUNC3(&r->exts))
				FUNC4(&r->rwork,
					       tcindex_destroy_rexts_work);
			else
				FUNC0(r);
		}
	}

	for (i = 0; p->h && i < p->hash; i++) {
		struct tcindex_filter *f, *next;
		bool last;

		for (f = FUNC2(p->h[i]); f; f = next) {
			next = FUNC2(f->next);
			FUNC6(tp, &f->result, &last, rtnl_held, NULL);
		}
	}

	FUNC4(&p->rwork, tcindex_destroy_work);
}