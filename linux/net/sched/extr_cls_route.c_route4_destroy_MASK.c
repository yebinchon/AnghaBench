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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct route4_head {int /*<<< orphan*/ * table; int /*<<< orphan*/ * ht; } ;
struct route4_filter {int /*<<< orphan*/  exts; int /*<<< orphan*/  res; int /*<<< orphan*/  next; } ;
struct route4_bucket {int /*<<< orphan*/ * table; int /*<<< orphan*/ * ht; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct route4_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct route4_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct route4_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC3 (struct route4_filter*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tcf_proto *tp, bool rtnl_held,
			   struct netlink_ext_ack *extack)
{
	struct route4_head *head = FUNC4(tp->root);
	int h1, h2;

	if (head == NULL)
		return;

	for (h1 = 0; h1 <= 256; h1++) {
		struct route4_bucket *b;

		b = FUNC4(head->table[h1]);
		if (b) {
			for (h2 = 0; h2 <= 32; h2++) {
				struct route4_filter *f;

				while ((f = FUNC4(b->ht[h2])) != NULL) {
					struct route4_filter *next;

					next = FUNC4(f->next);
					FUNC0(b->ht[h2], next);
					FUNC6(tp, &f->res);
					if (FUNC5(&f->exts))
						FUNC3(f);
					else
						FUNC1(f);
				}
			}
			FUNC0(head->table[h1], NULL);
			FUNC2(b, rcu);
		}
	}
	FUNC2(head, rcu);
}